//
//  NumbersListView.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//


import SwiftUI

struct NumbersListView : View {
    var person = Person()
 
   
    var body: some View {
        NavigationView {
            List(person.data) { contact in
    
                    NumbersRowView(contact: contact)
            
            }.navigationBarTitle(Text("Numbers"))
        }
    }
}


struct NumbersView_Previews : PreviewProvider {
    static var previews: some View {
        NumbersListView()
            
    }
}

