//
//  ContactRowView.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//

import SwiftUI

struct ContactRowView : View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(contact.firstName).font(.headline)
                Text(contact.lastName).font(.subheadline)
            }
            
            Spacer()
            
        
        }
    }
}
