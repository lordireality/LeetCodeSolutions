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
        
        let jsonString = readStr(resoursePath: "tasks", ext: "json") ?? ""
        
        if let jsonData = jsonString.data(using: .utf8) {
            do {
                let taskList = try JSONDecoder().decode(TaskList.self, from: jsonData)
                for task in taskList.tasks {
                    tasks.append(task)
                }
            } catch {
                return []
            }
        }
        return tasks;
    }
    ///Получить подробную модель задачи с чтением проблемы/решения
    public func getTask(taskBase: LeetCodeTaskBase)->LeetCodeTaskModel{
        var taskModel = LeetCodeTaskModel(name: taskBase.name, taskUrl: taskBase.taskUrl, category: taskBase.category, isCompleted: taskBase.isCompleted, taskLevel: taskBase.taskLevel)
        taskModel.problem = readStr(resoursePath: taskBase.fileTaskUrl, ext: "txt") ?? "Еще не загружено"
        taskModel.solution = readStr(resoursePath: taskBase.fileSolUrl, ext: "txt") ?? "Еще не загружено"
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
