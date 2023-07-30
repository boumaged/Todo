//
//  TodoDetails.swift
//  Todo
//
//  Created by Majed on 30/07/2023.
//

import SwiftUI

struct TodoDetails: View {
    @Binding var todo : Todo
    var body: some View {
        
        Form{
            TextField("Todo title", text: $todo.title)
            TextField("Subtitle", text: $todo.subtitle)
                .foregroundColor(.gray)
            Toggle("Completed", isOn: $todo.isCompleted)
        }
        .navigationTitle("Todo Detail")
    }
}

struct TodoDetails_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetails(todo: .constant(Todo(title: "Test")))
    }
}
