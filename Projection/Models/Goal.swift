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
    var goalTasks: [Goal]
    
    init(id: UUID = UUID(), name: String, goalComplete: Bool, goalTasks: [Goal]) {
        self.id = id
        self.name = name
        self.goalComplete = goalComplete
        self.goalTasks = goalTasks
    }
}

extension Goal {
    static let sampleGoals: [Goal] =
    [
        Goal(name: "Clean house", goalComplete: false,
             goalTasks: [
                Goal(name: "Clean bathroom", goalComplete: false, goalTasks: []),
                Goal(name: "Clean bedroom", goalComplete: true, goalTasks: []),
                Goal(name: "Mop", goalComplete: true, goalTasks: [])
             ]),
        Goal(name: "Write essay", goalComplete: false,
             goalTasks: [
                Goal(name: "Write outline", goalComplete: false, goalTasks: []),
                Goal(name: "Write introduction", goalComplete: false, goalTasks: []),
                Goal(name: "Write body", goalComplete: false, goalTasks: []),
                Goal(name: "Write conclusion", goalComplete: false, goalTasks: []),
                Goal(name: "Revise", goalComplete: false, goalTasks: []),
                Goal(name: "Submit", goalComplete: false, goalTasks: [])
             ]),
        Goal(name: "Apply for job", goalComplete: true, goalTasks: []),
        Goal(name: "Buy new clothes", goalComplete: false, goalTasks: []),
        Goal(name: "Go grocery shopping", goalComplete: false, goalTasks: [])
    ]
}
