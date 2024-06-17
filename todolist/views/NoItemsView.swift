//
//  NoItemsView.swift
//  todolist
//
//  Created by Bishwash Chaudhari on 17/06/2024.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate : Bool = false
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("are you one bigmother fucker who fucks his own life")
                    .padding(.bottom,20)
                
                NavigationLink(destination: AddView()) {
                    Text("Add Something")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.red : Color.accentColor)
                        .cornerRadius(10)
                }
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y : animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: {
                addAnimation()
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func addAnimation (){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            ){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView {
        NoItemsView()
            .navigationTitle("No Items")
    }
    
}
