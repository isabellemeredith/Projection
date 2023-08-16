//
//  GoalTaskView.swift
//  Projection
//
//  Created by Isabelle on 8/16/23.
//

import SwiftUI

struct GoalTaskView: View {
    @Binding var goalTask: Goal
    
    var body: some View {
        VStack {
            HStack {
                if (goalTask.goalComplete) {
                    Circle().strokeBorder(.black).background(Circle().foregroundColor(Color.blue).frame(width: 18, height: 18))
                        .frame(width: 20, height: 20)
                        .onTapGesture {
                             goalTask.goalComplete = false
                        }
                }
                else {
                    Circle().stroke()
                        .frame(width: 20, height: 20)
                        .onTapGesture {
                             goalTask.goalComplete = true
                        }
                }
                Text("\(goalTask.name)")
                    .font(.headline)
            }
        }
    }
}

struct GoalTaskView_Previews: PreviewProvider {
    static var previews: some View {
        GoalTaskView(goalTask: .constant(Goal.sampleGoals[0].goalTasks[0]))
    }
}
