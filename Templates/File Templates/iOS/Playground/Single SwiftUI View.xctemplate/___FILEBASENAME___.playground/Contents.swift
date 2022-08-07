//: A SwiftUI based Playground for presenting user interface

import SwiftUI
import PlaygroundSupport

struct ContentView: View {

    var body: some View {
        Text("Hello World!")
    }
}

// Present the view in the Live View window
PlaygroundPage.current.setLiveView(
    PlaygroundView(device: .iPhoneSE) {
        ContentView()
    }
)
