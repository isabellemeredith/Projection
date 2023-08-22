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
        VStack(alignment: .leading) {
            Section(header: Text(goal.name)) {
            }
            .font(.headline)
            Section {
                ForEach(goal.goalTasks) {goalTask in
                    Text(goalTask.name)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 10))
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView(goal: .constant(Goal.sampleGoals[0]))
    }
}
