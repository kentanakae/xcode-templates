import SwiftUI

public struct PlaygroundView<Content> : View where Content : View {

    var `content`: Content
    let width: CGFloat
    let height: CGFloat
    
    public init(width: CGFloat = 320, height: CGFloat = 568, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.width = width
        self.height = height
    }

    public init(device: Device = .iPhoneSE, orientation: Device.Orientation = .portrait, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.width = orientation == .portrait ? device.size.width : device.size.height
        self.height = orientation == .portrait ? device.size.height : device.size.width
    }

    public var body: some View {
        ZStack {
            self.content.frame(minWidth: self.width, maxWidth: .infinity, minHeight: self.height, maxHeight: .infinity).background(Color.white)
        }
    }
}
