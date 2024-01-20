//
//  CompletionCircle.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import SwiftUI



struct CompletionCircle: View {
    var isCompleted: Bool = false
    var body: some View {
        if(isCompleted){
            Image(systemName: "circle.fill")
                .foregroundStyle(.green)
        } else {
            Image(systemName: "circle.fill")
                .foregroundStyle(.red)
        }
        
    }
}

#Preview {
    CompletionCircle()
}
