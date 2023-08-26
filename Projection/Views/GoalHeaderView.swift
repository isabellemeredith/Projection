//
//  GoalHeaderView.swift
//  Projection
//
//  Created by Isabelle on 8/26/23.
//

import SwiftUI

struct GoalHeaderView: View {
    @Binding var goal: Goal
    
    var body: some View {
        VStack {
            Text(goal.name)
                .padding()
            HStack {
                Text("Goal added:")
                Spacer()
                Text(goal.dateAdded, style: .date)
            }
            HStack {
                Text("Deadline:")
                Spacer()
                Text(goal.deadline, style: .date)
            }
        }
        .font(.headline)
        .padding()
    }
}

struct GoalHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GoalHeaderView(goal: .constant(Goal.sampleGoals[0]))
    }
}
