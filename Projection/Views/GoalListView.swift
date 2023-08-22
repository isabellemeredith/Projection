//
//  ContentView.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import SwiftUI

struct GoalListView: View {
    @Binding var goals: [Goal]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("To Do")
                    .font(.headline)
            }
            HStack {
                Button(action: {}) {
                    
                }
            }
            List($goals) { $goal in
                GoalCardView(goal: $goal)
            }
        }
        .padding()
    }
}

struct GoalListView_Previews: PreviewProvider {
    static var previews: some View {
        GoalListView(goals: .constant(Goal.sampleGoals))
    }
}
