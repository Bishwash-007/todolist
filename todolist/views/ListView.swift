//
//  ListView.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 16/06/2024.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "this is the first title", iscompleted: false),
        ItemModel(title: "this is the second title", iscompleted: true),
        ItemModel(title: "this is the Third title", iscompleted: false)
    ]
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItems)
            .onMove(perform: moveItems)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List ")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: {
                AddView()
            })
        )
    }
    
    func deleteItems(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItems(from : IndexSet, to : Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}
