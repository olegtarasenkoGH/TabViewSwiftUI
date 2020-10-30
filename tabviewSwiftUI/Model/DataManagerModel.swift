//
//  DataManagerModel.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//

import SwiftUI


class DataManager {
    
    static var contacts: [Contact] {
        
        let data = try! personArrayLoad(fromFile: "PersonDataBase", ofType: "plist")
        return data.compactMap { Contact(dictionary: $0) }
        
    }
    
    static func personArrayLoad(fromFile name: String, ofType type: String) throws -> [[String: String]] {
        
        guard let path = Bundle.main.path(forResource: name, ofType: type)
        else { throw PlistError.invalidResource }
        
        guard let array = NSArray(contentsOfFile: path) as? [[String: String]]
        else { throw PlistError.parsingFailure }
        
        return array
        
    }
    
    enum PlistError: Error {
        case invalidResource
        case parsingFailure
    }
    
}
