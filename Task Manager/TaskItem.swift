//
//  TaskItem.swift
//  Task Manager
//
//  Created by Kevin Fairuz on 20/06/24.
//

import SwiftUI

struct TaskItem: View {
    
    @Binding var task: Task
    var body: some View {
        HStack(alignment: .top ,  content: {
            Circle()
                .frame(width:10, height: 10)
                .padding(4)
                .background(.white.shadow(.drop(color: .black.opacity(0.1), radius: 3)), in: .circle)
                .overlay {
                    Circle()
                        .frame(width: 50, height: 50)
                        .blendMode(.destinationOver)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                task.isCompleted.toggle()
                            }
                        }
                }
            
            VStack(alignment: .leading,spacing: 8, content: {
                HStack {
                    Text(task.title)
                        .font(.system(size: 20, weight: .semibold))
                    
                    Spacer()
                    
                    Label("\(task.date.format("hh:mm a"))", systemImage: "clock")
                        .font(.callout)
                    
                }
                .hSpacing(.leading)
                
                Text(task.caption)
                    .font(.callout)
                
            })
            .frame(maxWidth: .infinity)
            .padding(0)
            .background(task.tint.opacity(0.4))
            .clipShape(.rect(cornerRadius: 20))
        })
        .padding(.horizontal)
    }
    
    var indicatorColor: Color {
        if task.isCompleted {
            return .green
        }
        return task.date.isSameHour ? .black : (task.date.isPast ? .blue: .black)
    }
}
 
