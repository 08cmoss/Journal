//
//  FirebaseController.swift
//  Journal
//
//  Created by Pierre on 2/29/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import Firebase

class FirebaseController {
    
    static let base = Firebase(url: "journal1980.firebaseIO.com")
    static let entryBase = base.childByAppendingPath("entries")
}