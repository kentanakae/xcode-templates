import SwiftUI

public enum Device {
    case iPhoneSE
    case iPhoneSE2
    case iPhoneSE3

    public enum Orientation {
        case portrait
        case landscape
    }

    var size: CGSize {
        switch self {
        case .iPhoneSE: return CGSize(width: 375, height: 568)
        case .iPhoneSE2, .iPhoneSE3: return CGSize(width: 375, height: 667)
        }
    }
}
