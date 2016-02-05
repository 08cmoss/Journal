//
//  Entry.swift
//  Journal
//
//  Created by Cameron Moss on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    let timestamp: NSDate
    let title: String
    let bodyText: String
    
    init(timestamp: NSDate, title: String, bodyText: String) {
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return (lhs.timestamp == rhs.timestamp) && (lhs.title == rhs.title) && (lhs.bodyText == rhs.bodyText)
}
