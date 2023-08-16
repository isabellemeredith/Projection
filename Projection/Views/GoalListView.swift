//
//  ContentView.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import SwiftUI

struct GoalListView: View {
    let goals: [Goal]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("To Do")
                    .font(.headline)
            }
            List(goals) { goal in
                GoalCardView(goal: goal)
            }
        }
        .padding()
    }
}

struct GoalListView_Previews: PreviewProvider {
    static var previews: some View {
        GoalListView(goals: Goal.sampleGoals)
    }
}
