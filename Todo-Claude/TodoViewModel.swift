//
//  TodoViewModel.swift
//  Todo-Claude
//
//  Created by Vishwas Sharma on 26/01/24.
//

import Foundation


class TodoViewModel: ObservableObject {
  @Published var todos: [Todo] = []
  
  func addToTodoList(_ title: String) {
    let todo = Todo(title: title)
    todos.append(todo)
  }
}
