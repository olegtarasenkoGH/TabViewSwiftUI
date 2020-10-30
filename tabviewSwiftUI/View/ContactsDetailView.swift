//
//  ContactsDetailView.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//
import SwiftUI

struct ContactDetail : View {
    
    var person: Person
    var contact: Contact
    
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 200, height: 200)
                 
            HStack {
                Text("\(contact.firstName) \(contact.lastName)")
                    .font(.largeTitle)
            }
            .padding()
            
            HStack {
                Text("Phone")
                Spacer()
                Text(contact.phone)
                }.padding(.bottom, 5)
            
            HStack {
                Text("Email")
                Spacer()
                Text(contact.email)
                }.padding(.bottom, 5)
            
           
            
            Spacer()
        }.padding(40)
    }
}
