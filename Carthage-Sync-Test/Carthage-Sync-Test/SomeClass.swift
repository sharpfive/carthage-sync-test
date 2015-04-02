//
//  SomeClass.swift
//  Carthage-Sync-Test
//
//  Created by Jaim Zuber on 4/2/15.
//  Copyright (c) 2015 Sharp Five Software. All rights reserved.
//

import Foundation

class SomeClass {
    
    let lockObject = NSObject()
    
    var array = [String]()
    
    func doSomethingThreadSafe() {
        synchronize(lockObject, { () -> () in
            for element in self.array {
                NSLog("%@",element)
            }
        })
    }
    
}

func synchronizeAndReturn<T>(lockObj: AnyObject!, closure: () -> T) -> T {
    objc_sync_enter(lockObj)
    var value: T = closure()
    objc_sync_exit(lockObj)
    return value
}

func synchronize(lock: AnyObject, closure: () -> ()) {
    objc_sync_enter(lock)
    closure()
    objc_sync_exit(lock)
}

