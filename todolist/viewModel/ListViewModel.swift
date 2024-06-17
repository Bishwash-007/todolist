//  ListViewModel.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 17/06/2024.
//

import Foundation

/*
 CRUD functions
 Create
 Read
 Update
 Delete
 */

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "this is the first title", isCompleted: false),
            ItemModel(title: "this is the second title", isCompleted: true),
            ItemModel(title: "this is the third title", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItems(at indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItems(from indexSet: IndexSet, to destination: Int) {
        items.move(fromOffsets: indexSet, toOffset: destination)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id }){
            items[index] = item.updateCompletion()
        }
    }
}
