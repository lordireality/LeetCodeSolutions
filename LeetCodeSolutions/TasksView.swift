//
//  TasksView.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import SwiftUI

struct TasksView: View {
    var lcManager = LeetCodeStorageManager.shared
    var body: some View {
        NavigationStack{
            List{
                
                ForEach(lcManager.tasksGrouped.keys.sorted(), id: \.self){ key in
                    
                    if let tasks = lcManager.tasksGrouped[key]{
                        CategoryView(taskBase: tasks, category: key, lcManager: lcManager)
                    }
                }
                
            }
        }
    }
}

struct CategoryView: View{
    var taskBase: [LeetCodeTaskBase]
    var category: String
    var lcManager: LeetCodeStorageManager
    var body: some View{
        Section(header: Text(category)) {
            ForEach(taskBase){ task in
                NavigationLink{
                    TaskView(task: lcManager.getTask(taskBase: task))
                } label: {
                    HStack{
                        CompletionCircle(isCompleted: task.isCompleted)
                        Text(task.name)
                        Spacer()
                        DificultyLabel(taskLevel: task.taskLevel)
                    }
                    
                }
            }
        }
        
    }
    
    
}


#Preview {
    TasksView()
}
