//
//  LeetCodeTaskModel.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import Foundation

///базовый класс проблемы
struct LeetCodeTaskBase: Codable, Identifiable {
    let id: UUID = .init()
    let name: String
    let taskUrl: String
    let fileTaskUrl: String
    let fileSolUrl: String
    let category: LeetCodeCategory
    let isCompleted: Bool
    let taskLevel: TaskLevel
        
    enum CodingKeys: String, CodingKey {
        case name
        case taskUrl
        case fileTaskUrl
        case fileSolUrl
        case category
        case isCompleted
        case taskLevel
    }

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
struct LeetCodeCategory: Codable, Hashable{
    let id: UUID = .init()
    let name: String
    enum CodingKeys: String, CodingKey {
        case name
    }
}

///сложность проблемы
enum TaskLevel: String, Codable{
    case easy = "easy"
    case medium = "medium"
    case hard = "hard"
    case unknown = ""
}
///костыль для парса джсон
struct TaskList: Codable {
    var tasks: [LeetCodeTaskBase]
}

