//
//  UserController.swift
//  Journal
//
//  Created by Pierre on 3/1/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import Firebase


class UserController {
    
    static let sharedController = UserController()
    
    
    func createUser(email: String, password: String) {
        
        let ref = FirebaseController.base
        ref.createUser(email, password: password) { (error, resultsDictionary) -> Void in
            
            if error != nil {
                print(error.localizedDescription)
            
            } else {
                print("successfully created user with email: \(email)")
            }
        }
    }
    
    
    func loginUser(email: String, password: String) {
        
        let ref = FirebaseController.base
        ref.authUser(email, password: password) { (error, authData) -> Void in
            
            if error != nil {
                print(error.localizedDescription)
            
            } else {
                print("successfully logged in user with email: \(email)")
            }
        }
    }
    
    
    
    
    

}
