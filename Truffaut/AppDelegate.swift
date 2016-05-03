//
//  AppDelegate.swift
//  Truffaut
//
//  Created by Yan Li on 4/14/16.
//  Copyright © 2016 Codezerker. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  func applicationDidFinishLaunching(aNotification: NSNotification) {
    PlugIn.sharedPlugIn.loadPlugIns()
    RemoteServer.sharedServer.start()
  }

  func applicationWillTerminate(aNotification: NSNotification) {
    // Insert code here to tear down your application
  }
  
}

extension AppDelegate {
  
  @IBAction func menuAction(sender: AnyObject) {
    guard let menuItem = sender as? NSMenuItem else {
      return
    }
    
    MenuActionDispatcher.dispatchAction(menuItem)
  }
  
}
