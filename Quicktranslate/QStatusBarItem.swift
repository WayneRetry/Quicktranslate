//
//  QStatusBarItem.swift
//  Quicktranslate
//
//  Created by Wayne Lin on 2020/11/25.
//

import SwiftUI

class QStatusBarItem {
    private let statusItem: NSStatusItem
    private let popover: NSPopover

    init() {
        popover = NSPopover()
        popover.contentSize = NSSize(width: 500, height: 400)
        popover.behavior = .transient
        popover.contentViewController = NSHostingController(rootView: MenuView())
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem.button?.action = #selector(togglePop(sender:))
        statusItem.button?.target = self
        statusItem.button?.title = "Translate"
        statusItem.button?.image = NSImage(named: "g_translate-white-18dp")
        statusItem.button?.alternateImage = NSImage(named: "g_translate-white-18dp")
    }
    
    @objc private func togglePop(sender: Any?) {
        if popover.isShown {
            popover.performClose(sender)
        } else {
            popover.show(relativeTo: statusItem.button!.bounds, of: statusItem.button!, preferredEdge: .minY)
        }
    }
}
