//
//  GoalCardView.swift
//  Projection
//
//  Created by Isabelle on 8/10/23.
//

import SwiftUI

struct GoalCardView: View {
    let goal: Goal
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Text("\(goal.name)")
                    .font(.headline)
                Spacer()
                Label("Done", systemImage: "circle")
            }
            .padding()
            Section {
                ForEach(goal.goalTasks) {goal in
                    Text("\(goal.name) \n")
                }
            }
            .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 10))
        }
    }
}

struct GoalCardView_Previews: PreviewProvider {
    static var previews: some View {
        GoalCardView(goal: Goal.sampleGoals[0])
    }
}
