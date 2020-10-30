//
//  NumbersRowView.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//

import SwiftUI

struct NumbersRowView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(contact.firstName) \(contact.lastName)").font(.title)
            
            HStack {
                VStack {
                    Image(systemName: "phone.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipped()
                    
                    Image(systemName: "envelope.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipped()
                        .padding(.top, 5)
                }
                
                VStack(alignment: .leading) {
                    Text(contact.phone).font(.headline)
                        .padding(.horizontal)
                    Text(contact.email).font(.headline)
                        .padding(.top, 14)
                        .padding(.horizontal)
                }
                
                Spacer()
                
                
            }  .padding(.bottom, 20)
        }
    }
}
