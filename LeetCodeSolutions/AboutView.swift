//
//  AboutView.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        VStack {
            Image(uiImage: UIImage(named: "AppIcon") ?? UIImage())
                .resizable()
                .frame(width: 250.0, height: 250.0)
            HStack{
                Text("LeetCode Solutions")
                    .font(.largeTitle)
                if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                    Text("Версия: \(version)").font(.footnote).italic()
               }
            }
            Divider()
                Text("Создано Зыкином Германом для учета решенных задач leet-code в рамках предмета Практикум по программированию")
            VStack{
                Divider()
                Button("Закрыть") {
                    dismiss()
                }.font(.title)
                .cornerRadius(15)
                .buttonStyle(.bordered)
                .foregroundColor(Color.blue)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

#Preview {
    AboutView()
}
