//
//  MenuView.swift
//  Quicktranslate
//
//  Created by Wayne Lin on 2020/11/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        WebView(url: "https://translate.google.com/?sl=en&tl=zh-TW&op=translate")
            .overlay(
                Button(action: closeApp, label: {
                    Text("Close App")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                })
                .padding()
            , alignment: .bottomTrailing)
    }
    
    private func closeApp() {
        NSApp.terminate(self)
    }
}
