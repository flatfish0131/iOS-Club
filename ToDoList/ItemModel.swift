//
//  ItemModel.swift
//  toDoList
//
//  Created by 王竣翔 on 2023/3/6.
//

import SwiftUI

struct ItemModel:Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
