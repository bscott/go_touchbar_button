    //
//  MyWindowController.swift
//  go_touchbar_button
//
//  Created by Brian Scott on 6/27/17.
//  Copyright © 2017 Brian Scott. All rights reserved.
//

import Cocoa


class MyWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

    }
    
    extension NSTouchBarItemIdentifier {
        static let first = NSTouchBarItemIdentifier("com.demo.first")
        static let second = NSTouchBarItemIdentifier("com.demo.second")
    }
    
    @available(OSX 10.12.2, *)
    extension MyWindowController : NSTouchBarDelegate {
        
        override func makeTouchBar() -> NSTouchBar? {
            let touchBar = NSTouchBar()
            touchBar.delegate = self
            touchBar.defaultItemIdentifiers = [.first, .second]
            return touchBar
        }
        
        func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItemIdentifier) -> NSTouchBarItem? {
            switch identifier {
            case NSTouchBarItemIdentifier.first:
                let item = NSCustomTouchBarItem(identifier: identifier)
                item.view = NSButton(title: "Go",image: #imageLiteral(resourceName: "favicon.ico"), target: self, action: #selector(onClick))
                return item
                
                
            default: return nil
            }
        }
        
        func onClick() {
            // Add your Go Button logic
        }
    }
