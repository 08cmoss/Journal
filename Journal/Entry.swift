//
//  Entry.swift
//  Journal
//
//  Created by Cameron Moss on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    private let timestampKey = "timestamp"
    private let titleKey = "title"
    private let bodyTextKey = "bodyText"
    
    var timestamp: String
    let title: String
    let bodyText: String
    
    init(timestamp: String, title: String, bodyText: String) {
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
    }
    
    init?(dictionary: [String: AnyObject]) {
        guard let timestamp = dictionary[timestampKey] as? String, title = dictionary[titleKey] as? String, bodyText = dictionary[bodyTextKey] as? String else {
            self.timestamp = ""
            self.title = ""
            self.bodyText = ""
            return nil
        }
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
    }
    
    func dictionaryCopy() -> [String: AnyObject] {
        
        let dictionary = [
            timestampKey: self.timestamp,
            titleKey: self.title,
            bodyTextKey: self.bodyText
        ]
        return dictionary
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return (lhs.timestamp == rhs.timestamp) && (lhs.title == rhs.title) && (lhs.bodyText == rhs.bodyText)
}
