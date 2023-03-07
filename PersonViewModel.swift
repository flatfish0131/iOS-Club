//
//  PersonViewModel.swift
//  directory
//
//  Created by 王竣翔 on 2023/3/6.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [PersonModel] = []
    
    init() {
        addPeople()
    }

    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
    
}

let peopleData = [
    PersonModel(name: "Steve", email: "Steve@mail.com", phoneNumber: "0900-000-111"),
    PersonModel(name: "Tim", email: "Tim@mail.com", phoneNumber: "0900-111-222"),
    PersonModel(name: "Craig", email: "Craig@mail.com", phoneNumber: "0900-222-333"),
    PersonModel(name: "Jeff", email: "Jeff@mail.com", phoneNumber: "0900-333-444"),
    PersonModel(name: "John", email: "John@mail.com", phoneNumber: "0900-555-555")
]
