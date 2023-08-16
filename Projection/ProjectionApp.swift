//
//  ProjectionApp.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import SwiftUI

@main
struct ProjectionApp: App {
    @State private var goals = Goal.sampleGoals
    
    var body: some Scene {
        WindowGroup {
            GoalListView(goals: $goals)
        }
    }
}
