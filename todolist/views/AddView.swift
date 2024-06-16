//
//  AddView.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 16/06/2024.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText : String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Add an item", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                Button(
                    action: {
                        //code
                        
                    },
                    label: {
                    Text("SAVE")
                        .foregroundStyle(.white)
                        
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an item")
    }
}

#Preview {
    NavigationView{
        AddView()
    }
}
