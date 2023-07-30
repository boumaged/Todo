//
//  ContentView.swift
//  Todo
//
//  Created by Majed on 30/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todos = [
        Todo( title: "Feed the cat"),
        Todo( title: "Play with cat"),
    Todo( title: "Get allergies"),
    Todo( title: "Run a way from cat"),
        Todo( title: "Get a new cat")]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(todos, id: \.id) { todo in
                    Text(todo.title)
                        
                }
                .navigationTitle("Todos")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
