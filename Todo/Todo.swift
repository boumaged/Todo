//
//  Todo.swift
//  Todo
//
//  Created by Majed on 30/07/2023.
//

import Foundation

struct Todo : Identifiable{
    let id = UUID()
    var title : String
    var subtitle = ""
    var isCompleted = false
}
