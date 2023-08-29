//
//  NewGoalView.swift
//  Projection
//
//  Created by Isabelle on 8/28/23.
//

import SwiftUI

struct NewGoalView: View {
    @State private var newGoal = Goal.emptyGoal
    @State private var newSubGoalName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Goal")) {
                TextField("Goal Name", text: $newGoal.name)
                DatePicker(
                    "Deadline",
                    selection: $newGoal.deadline,
                    displayedComponents: [.date]
                )
            }
            Section(header: Text("Subgoals")) {
                Button(action: {}) {
                    Text("Break down from template")
                }
                ForEach(newGoal.goalTasks) { subGoal in
                    Text(subGoal.name)
                }
                .onDelete { indices in
                    newGoal.goalTasks.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Subgoal", text: $newSubGoalName)
                    Button(action: {
                        withAnimation {
                            let subGoal = Goal(name: newSubGoalName, goalComplete: false, goalTasks: [], deadline: Date() + 100000)
                            newGoal.goalTasks.append(subGoal)
                            newSubGoalName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add subgoal")
                    }
                    .disabled(newSubGoalName.isEmpty)
                }
            }
        }
    }
}

struct NewGoalView_Previews: PreviewProvider {
    static var previews: some View {
        NewGoalView()
    }
}
