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
        
            for element in self.array {
                NSLog("%@",element)
            }
    }
    
}


