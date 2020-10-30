//
//  ContentView.swift
//  TabViewSwiftUI
//
//  Created by Олег Тарасенко on 10/30/20.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        
        
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Contacts")
                }
            NumbersListView()
                .tabItem {
                    Image(systemName: "person.2.circle")
                    Text("Numbers")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
