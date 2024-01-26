//
//  ContentView.swift
//  Todo-Claude
//
//  Created by Vishwas Sharma on 26/01/24.
//

import SwiftUI

struct ContentView: View {
  
  @StateObject var vm = TodoViewModel()
  @State private var text: String = ""
  var body: some View {
    VStack {
      NavigationStack{
        List{
          ForEach(vm.todos) { todo in
            Text(todo.title)}
                    
        }
        
        
        TextField("", text: $text).textFieldStyle(.roundedBorder)
        Button("Add Todo") {
          vm.addToTodoList(text)
                  }
        
        .navigationTitle("Todo List ")
      }
      .environmentObject(vm)
      
      
      
      
      
      
      
      
    }
  }
}

#Preview {
  ContentView()
}
