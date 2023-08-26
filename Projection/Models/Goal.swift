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
    var dateAdded: Date
    var deadline: Date
    
    init(id: UUID = UUID(), name: String, goalComplete: Bool, goalTasks: [Goal], dateAdded: Date = Date(), deadline: Date) {
        self.id = id
        self.name = name
        self.goalComplete = goalComplete
        self.goalTasks = goalTasks
        self.dateAdded = dateAdded
        self.deadline = deadline
    }
}

extension Goal {
    static let sampleGoals: [Goal] =
    [
        Goal(name: "Clean house", goalComplete: false,
             goalTasks: [
                Goal(name: "Clean bathroom", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
                Goal(name: "Clean bedroom", goalComplete: true, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
                Goal(name: "Mop", goalComplete: true, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541))
             ], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
        Goal(name: "Write essay", goalComplete: false,
             goalTasks: [
                Goal(name: "Write outline", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
                Goal(name: "Write introduction", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
                Goal(name: "Write body", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
                Goal(name: "Write conclusion", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
                Goal(name: "Revise", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
                Goal(name: "Submit", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541))
             ], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
        Goal(name: "Apply for job", goalComplete: true, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
        Goal(name: "Buy new clothes", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541)),
        Goal(name: "Go grocery shopping", goalComplete: false, goalTasks: [], dateAdded: Date(timeIntervalSinceReferenceDate: 714768452), deadline: Date(timeIntervalSinceReferenceDate: 715200541))
    ]
}
