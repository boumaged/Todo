//
//  ContentView.swift
//  Todo
//
//  Created by Majed on 30/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todos = [
        Todo( title: "Feed the cat", subtitle: "Cold milk", isCompleted: true),
        Todo( title: "Play with cat", subtitle: "Just for 15 mins"),
    Todo( title: "Get allergies"),
    Todo( title: "Run a way from cat"),
        Todo( title: "Get a new cat")]
    
    var body: some View {
        NavigationStack {
            VStack {
                List($todos, id: \.id) { $todo in
                    NavigationLink
                    {
                      TodoDetails(todo: $todo)
                    }
                label:{
                    HStack{
                        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            }
                        
                        VStack(alignment:.leading) {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                            if(!todo.subtitle.isEmpty)
                            {
                                Text(todo.subtitle)
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                    .strikethrough(todo.isCompleted)
                            }
                            
                        }
                    }
                    
                }
                .navigationTitle("Todos")
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
