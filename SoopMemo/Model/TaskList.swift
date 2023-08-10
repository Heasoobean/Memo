//
//  TaskList.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/10.
//

import Foundation

struct TaskList {
    static var list: [Task] = [
        Task(id: 0, title: "공식 문서 읽기", isCompleted: false),
        Task(id: 1, title: "공식 문서 읽기2", isCompleted: true),
    ]
    static func completeList() -> [Task] {
        return list.filter{ $0.isCompleted == true }
    }
    static func completeTask(task: Task, isCompleted: Bool) {
        for index in 0 ..< list.count {
            if list[index].id == task.id {
                list[index].isCompleted = isCompleted
            }
        }
    }
    static func editTask(task: Task, title: String) {
        for index in 0 ..< list.count {
            if list[index].id == task.id {
                list[index].title = title
            }
        }
    }
    static func deleteTask(task: Task) {
        list.removeAll(where: {$0.id == task.id})
    }
}
