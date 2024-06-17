//
//  itemModel.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 16/06/2024.
//

import Foundation


// immutable struct
struct ItemModel : Identifiable {
    var id : String = UUID().uuidString
    let title : String
    let isCompleted : Bool
    
    
    init(id : String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion () -> ItemModel{
        return ItemModel(id: id, title: title , isCompleted: !isCompleted)
    }
}
