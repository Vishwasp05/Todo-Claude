//
//  Todo.swift
//  Todo-Claude
//
//  Created by Vishwas Sharma on 26/01/24.
//

import Foundation

struct Todo: Identifiable {
  var id = UUID()
  
  let title: String
  var completed = false
}
