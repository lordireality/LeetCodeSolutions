//
//  LeetCodeTaskModel.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import Foundation

///базовый класс проблемы
struct LeetCodeTaskBase: Identifiable{
    let id: UUID
    let name: String
    let taskUrl: String
    let fileTaskUrl: String
    let fileSolUrl: String
    let category: LeetCodeCategory
    let isCompleted: Bool
    let taskLevel: TaskLevel
    
}

///подробный класс проблемы
struct LeetCodeTaskModel{
    let name: String
    let taskUrl: String
    var problem: String = ""
    var solution: String = ""
    let category: LeetCodeCategory?
    let isCompleted: Bool
    let taskLevel: TaskLevel
    
    
}

///категория проблемы
struct LeetCodeCategory: Hashable{
    let id: UUID
    let name: String
}

///сложность проблемы
enum TaskLevel{
    case easy, medium, hard, unknown
}
