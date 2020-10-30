//
//  ContactModel.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//

import SwiftUI


struct Person {
    var data: [Contact] = DataManager.contacts.shuffled()
}

struct Contact: Hashable, Identifiable {
    
    let id: Int
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
}

// Array Plist
extension Contact {
    
    struct Key {
        
        static let id = "id"
        static let firstName = "firstName"
        static let lastName = "lastName"
        static let phone = "phoneNumber"
        static let email = "email"
        
    }
    
    init?(dictionary: [String: String]) {
        
        guard let idNumber = dictionary[Key.id],
              let firstNameString = dictionary[Key.firstName],
              let lastNameString = dictionary[Key.lastName],
              let phoneString = dictionary[Key.phone],
              let emailString = dictionary[Key.email] else { return nil }
        
        self.id = Int(idNumber) ?? Int("")!
        self.firstName = firstNameString
        self.lastName = lastNameString
        self.phone = phoneString
        self.email = emailString
    }
}
