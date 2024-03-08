//
//  User.swift
//  ToDoList
//
//  Created by นางสาวสุภาพันธ์ หง่อสกุล on 8/3/2567 BE.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
