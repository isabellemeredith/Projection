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
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("To Do")
                        .font(.headline)
                }
                .padding()
                HStack {
                    Button(action: {}) {
                        Text("New Goal")
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding(.horizontal)
                ScrollView {
                    ForEach($goals) { $goal in
                        HStack {
                            GoalCardView(goal: $goal)
                            NavigationLink(destination: GoalView(goal: $goal)) {
                                Text("Details")
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct GoalListView_Previews: PreviewProvider {
    static var previews: some View {
        GoalListView(goals: .constant(Goal.sampleGoals))
    }
}
