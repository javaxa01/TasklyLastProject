import Foundation
import SwiftUI

struct ContentView: View {
    @State private var tasks: [ToDoItem] = [
        ToDoItem(title: "Project Deadline", isCompleted: false, dueDate: Date()),

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
