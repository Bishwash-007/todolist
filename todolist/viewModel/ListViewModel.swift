//
//  ListViewModel.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 17/06/2024.
//

import Foundation

class ListViewModel {
    @Published var items : [ItemModel] = []
    
    init(){
        
    }
    func getItems(){
        let newItems = [
            ItemModel(title: "this is the first title", iscompleted: false),
            ItemModel(title: "this is the second title", iscompleted: true),
            ItemModel(title: "this is the Third title", iscompleted: false)
        ]
    }
}
