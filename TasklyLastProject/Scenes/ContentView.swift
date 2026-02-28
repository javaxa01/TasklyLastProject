import Foundation
import SwiftUI

struct ContentView: View {
    @State private var tasks: [ToDoItem] = [
        ToDoItem(title: "Explore SwiftUI Features", isCompleted: false, dueDate: Date()),
        ToDoItem(title: "Design Modern UI", isCompleted: true, dueDate:     Date())
    ]
    
    var body: some View {
        NavigationStack {
            MainTaskView(tasks: $tasks)
        }
    }
}

var backgroundGradient: some View {
    LinearGradient(
        gradient: Gradient(colors: [
            Color(red: 0.10, green: 0.05, blue: 0.18),
            Color.white
        ]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    ).ignoresSafeArea()
}
