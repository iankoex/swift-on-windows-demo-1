// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import WinUI

@main
public class App: SwiftApplication {

    override public func onLaunched(_ args: WinUI.LaunchActivatedEventArgs) {
        let window = Window()
        window.title = "App"

        try! window.activate()

        let button = Button()
        button.content = "Hello World"

        button.click.addHandler { _, _ in
            print("button clicked")
        }

        let panel = StackPanel()
        panel.orientation = .vertical
        panel.spacing = 10
        panel.horizontalAlignment = .center
        panel.verticalAlignment = .center
        panel.children.append(button)
        window.content = panel
    }

}
