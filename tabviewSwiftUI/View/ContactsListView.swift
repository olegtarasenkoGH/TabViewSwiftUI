//
//  ContactsListView.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//


import SwiftUI

struct ContactListView : View {
    var person = Person()
    
    
    var body: some View {
        NavigationView {
            
            List(person.data) { contact in
                
                NavigationLink(destination: ContactDetail(person: person, contact: contact))
                    { ContactRowView(contact: contact) }
                
            }.navigationBarTitle(Text("Contacts"))
        }
    }
}


struct ContactListView_Previews : PreviewProvider {
    static var previews: some View {
        ContactListView()
          
    }
}

