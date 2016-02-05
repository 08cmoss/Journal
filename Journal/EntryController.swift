//
//  EntryController.swift
//  Journal
//
//  Created by Cameron Moss on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    private let entriesKey = "entries"
    
    static var sharedInstance = EntryController()

    var entriesArray: [Entry]
    
    init() {
        entriesArray = []
        self.loadFromPersistentStorage()
    }

    func addEntry(entry: Entry) {
        
        entriesArray.append(entry)
        self.saveToPersistentStorage()
        
    }
    
    func removeEntry(indexPath: NSIndexPath) {
        
        entriesArray.removeAtIndex(indexPath.row)
        
    }
    
    func saveToPersistentStorage() {
        let savedEntry = self.entriesArray.map({$0.dictionaryCopy()})
        NSUserDefaults.standardUserDefaults().setObject(savedEntry, forKey: entriesKey)
        
    }
    
    func loadFromPersistentStorage() {
        let entryDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entriesKey) as? [[String: AnyObject]]
        
        if let entryDictionary = entryDictionariesFromDefaults {
            self.entriesArray = entryDictionary.map({Entry(dictionary: $0)!})
        }
        
    }


}


