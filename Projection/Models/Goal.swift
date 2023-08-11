//
//  Task.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import Foundation

struct Goal: Identifiable {
    let id: UUID
    var name: String
    var goalComplete: Bool
    
    init(id: UUID = UUID(), name: String, goalComplete: Bool) {
        self.id = id
        self.name = name
        self.goalComplete = goalComplete
    }
}

extension Goal {
    static let sampleGoals: [Goal] =
    [
        Goal(name: "Clean house", goalComplete: false),
        Goal(name: "Write essay", goalComplete: false),
        Goal(name: "Apply for job", goalComplete: true),
        Goal(name: "Buy new clothes", goalComplete: false),
        Goal(name: "Go grocery shopping", goalComplete: false)
    ]
}
