//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by นางสาวสุภาพันธ์ หง่อสกุล on 8/3/2567 BE.
//

import Foundation

struct ToDoListItem: Codable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
}
