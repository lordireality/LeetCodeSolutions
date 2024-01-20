//
//  DificultyLabel.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import SwiftUI

struct DificultyLabel: View {
    var taskLevel : TaskLevel
    
    var body: some View {
        switch(taskLevel) {
        case .easy: 
            Text("Easy")
                .font(.footnote)
                .padding()
                .foregroundStyle(.green)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.green, lineWidth: 4)
                )
        case .medium: 
            Text("Medium")
                .font(.footnote)
                .padding()
                .foregroundStyle(.yellow)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.yellow, lineWidth: 4)
                )
        case .hard: 
            Text("Hard")
                .font(.footnote)
                .padding()
                .foregroundStyle(.red)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.red, lineWidth: 4)
                )
        case .unknown: 
            Text("unknown")
                .font(.footnote)
                .padding()
                .foregroundStyle(.gray)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.gray, lineWidth: 4)
                )
            
        }
    }
}

