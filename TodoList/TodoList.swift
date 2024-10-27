

import SwiftUI

struct TodoList: View {
    
    var todos: [String] = [
        "Lean SwiftUI",
        "SwiftUI State",
        "SwiftUI Navigation",
        "SwiftUI Animations",
        "SwiftUI Testing"
    ]

    var body: some View {
        
        NavigationStack {
            
            List {
                
                ForEach(todos, id: \.self) { index in
                    
                    NavigationLink
                    {
                        DetailView(passedValue: "index \(index)")
                    } label: {
                        Text("Item \(index)")
                    }
                    
                }
             
            }
            
            
            .navigationTitle("Todo List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            
           
        }
    }
}

#Preview {
    TodoList()
}
