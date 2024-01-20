//
//  ContentView.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showingAbout:Bool = true
    var body: some View {
        VStack {
            TasksView()
        }
        .sheet(isPresented: $showingAbout, onDismiss: dismissAbout){
            AboutView()
            .presentationDragIndicator(.visible)
        }

    }
    func dismissAbout(){
        showingAbout = false;
    }
}

#Preview {
    ContentView()
}
