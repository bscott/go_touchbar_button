    //
//  MyWindowController.swift
//  go_touchbar_button
//
//  Created by Brian Scott on 6/27/17.
//  Copyright © 2017 Brian Scott. All rights reserved.
//

import Cocoa

// @avaliable(OSX 10.12.1, *)
class MyWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

    @IBAction func ButtonTap(_ sender: Any) {
        print("Hello Go!")
    }
    
    }
