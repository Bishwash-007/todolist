//
//  todolistApp.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 16/06/2024.
//

import SwiftUI

@main
struct todolistApp: App {
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(ListViewModel())
        }
    }
}
