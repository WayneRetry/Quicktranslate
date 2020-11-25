//
//  WebView.swift
//  Quicktranslate
//
//  Created by Wayne Lin on 2020/11/25.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    private let webView: WKWebView
    private let url: String
    
    init(url: String) {
        self.url = url
        self.webView = WKWebView()
    }
    
    func makeNSView(context: Context) -> WKWebView {
        if let url = URL(string: url) {
            webView.load(URLRequest(url: url))
        }
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        if let url = URL(string: url) {
            webView.load(URLRequest(url: url))
        }
    }
}


