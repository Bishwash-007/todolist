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
    func didSet() {
        saveItems()
    }
    let itemsKey : String = "Items_List"
    
    init() {
        getItems()
    }
    
    func getItems() {
        guard 
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let _ = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {
            return
            }
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
    
    func saveItems (){
        if let endcodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(endcodedData, forKey: itemsKey)
        }
    }
}
