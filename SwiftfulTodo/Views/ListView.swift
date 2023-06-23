//
//  ListView.swift
//  SwiftfulTodo
//
//  Created by Jiten Patel on 23/06/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title",
        "This is the second title",
        "Third"
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(destination: {
                AddView()
            }, label: {
                Text("Add")
            })
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        
    }
}


