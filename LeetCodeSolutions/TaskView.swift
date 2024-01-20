//
//  TaskView.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import SwiftUI



struct TaskView: View {
    let task: LeetCodeTaskModel
    var body: some View {
        VStack{
            VStack{
                Text(task.name)
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
                
            Divider()
            ScrollView{
                VStack{
                    Text("Проблема:")
                        .font(.title)
                    Text(task.problem)
                    Divider()
                    Text("Решение:")
                        .font(.title)
                    Text(task.solution)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            
        }
        

        
        
    }
}

#Preview {
    TaskView(task: LeetCodeTaskModel(name: "TestTask", taskUrl: "leetcode.com", problem: "somecode", solution: "Some code", category: nil, isCompleted: true, taskLevel: .easy))
}
