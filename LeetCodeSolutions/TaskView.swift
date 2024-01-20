//
//  TaskView.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import SwiftUI
import CodeEditorView
import LanguageSupport

struct TaskView: View {
    let task: LeetCodeTaskModel
    @State private var solutionText: String = "123"
    @State private var position: CodeEditor.Position = CodeEditor.Position()
    @State private var messages: Set<TextLocated<Message>> = Set ()
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    
    init(task: LeetCodeTaskModel){
        self.task = task
        _solutionText = State(initialValue: task.solution)
    }
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    CompletionCircle(isCompleted: task.isCompleted)
                    Link(destination: URL(string: task.taskUrl)!) {
                        Image(systemName: "link.circle.fill")
                    }
                    Text(task.name)
                        .font(.largeTitle)
                    Spacer()
                    DificultyLabel(taskLevel: task.taskLevel)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            Divider()
            VStack{
                Text("Проблема:")
                    .font(.title)
                ScrollView{
                    VStack{
                        Text(task.problem)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    
                }
                Divider()
                Text("Решение:")
                    .font(.title)
                CodeEditor(text: $solutionText, position: $position, messages: $messages, language: .swift())
                  .environment(\.codeEditorTheme,
                               colorScheme == .dark ? Theme.defaultDark : Theme.defaultLight)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    TaskView(task: LeetCodeTaskModel(name: "TestTask", taskUrl: "leetcode.com", problem: "somecode", solution: "Some code", category: nil, isCompleted: true, taskLevel: .easy))
}
