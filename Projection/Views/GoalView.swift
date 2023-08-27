//
//  TaskView.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import SwiftUI

struct GoalView: View {
    @Binding var goal: Goal
    @State private var newTask = ""
    
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
                    HStack {
                        TextField("New subtask here...", text: $newTask)
                        Button(action: {
                            withAnimation {
                                let subtask = Goal(name: newTask, goalComplete: false, goalTasks: [], deadline: Date() + 100000)
                                goal.goalTasks.append(subtask)
                                newTask = ""
                            }
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .accessibilityLabel("Add subtask")
                        }
                        .disabled(newTask.isEmpty)
                    }
                    .padding()
                    
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
