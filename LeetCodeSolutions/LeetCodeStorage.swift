//
//  LeetCodeStorage.swift
//  LeetCodeSolutions
//
//  Created by Герман Зыкин on 20.01.2024.
//

import Foundation

class LeetCodeStorageManager{
    ///Массив задачек с литкода, без данных о проблеме/решении
    ///для получения подробного инфо - getTask
    public var tasks:[LeetCodeTaskBase] = []
    ///Инициализатор менеджера синглтон
    public static let shared = LeetCodeStorageManager.init()
    
    private init(){
        self.tasks = createTasksList();
    }
    ///хардкод формирования списка задачек
    ///TODO: если проект окажется полезен в будущем - переделать на CoreData
    private func createTasksList() -> [LeetCodeTaskBase]{
        var tasks:[LeetCodeTaskBase] = []
        var newCat = LeetCodeCategory(id: .init(), name: "TestCat")
        var newTask = LeetCodeTaskBase(id: .init(), name: "test", taskUrl:"https://letcode.com", fileTaskUrl: "test1", fileSolUrl: "test2", category: newCat, isCompleted: false, taskLevel: .unknown)
        
        tasks.append(newTask)
        return tasks;
    }
    ///Получить подробную модель задачи с чтением проблемы/решения
    public func getTask(taskBase: LeetCodeTaskBase)->LeetCodeTaskModel{
        var taskModel = LeetCodeTaskModel(name: taskBase.name, taskUrl: taskBase.taskUrl, category: taskBase.category, isCompleted: taskBase.isCompleted, taskLevel: taskBase.taskLevel)
        taskModel.problem = readStr(resoursePath: taskBase.fileTaskUrl, ext: "txt") ?? "not found :("
        taskModel.solution = readStr(resoursePath: taskBase.fileSolUrl, ext: "txt") ?? "not found :("
        return taskModel
    }
    ///Чтение строки из файла по пути с расширением
    private func readStr(resoursePath : String, ext : String) -> String?{
        if let fileURL = Bundle.main.url(forResource: resoursePath, withExtension: ext) {
            do {
                let contents = try String(contentsOf: fileURL)
                return contents
            } catch {
                return nil
            }
        } else {
            return nil
        }

    }
}
