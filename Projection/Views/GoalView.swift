//
//  TaskView.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import SwiftUI

struct GoalView: View {
    @Binding var goal: Goal
    
    var body: some View {
        VStack {
            VStack {
                GoalHeaderView(goal: $goal)
                Button(action: {}) {
                    Text("Break Down Goal")
                        .frame(maxWidth: .infinity)
//                        .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: -10))
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach($goal.goalTasks) {$goalTask in
                        GoalTaskView(goalTask: $goalTask)
                            .frame(alignment: .leading)
                    }
                    
                }
                .frame(alignment: .leading)
            }
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView(goal: .constant(Goal.sampleGoals[0]))
    }
}
