//
//  itemModel.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 16/06/2024.
//

import Foundation

struct ItemModel : Identifiable {
    let id : String = UUID().uuidString
    let title : String
    let iscompleted : Bool
}
