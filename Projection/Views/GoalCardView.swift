//
//  GoalCardView.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import SwiftUI

struct GoalCardView: View {
    @Binding var goal: Goal
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                GoalTaskView(goalTask: $goal)
            }
            Section {
                ForEach($goal.goalTasks) {$goalTask in
                    GoalTaskView(goalTask: $goalTask)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 10))
        }
    }
}

struct GoalCardView_Previews: PreviewProvider {
    static var previews: some View {
        GoalCardView(goal: .constant(Goal.sampleGoals[0]))
    }
}
