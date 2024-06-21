//
//  Task.swift
//  Task Manager
//
//  Created by Kevin Fairuz on 19/06/24.
//

import SwiftUI

struct Task: Identifiable {
    var id: UUID = .init()
    var title:String
    var caption: String
    var date: Date = .init()
    var isCompleted = false
    var tint : Color
    }

// Sample Task

var sampleTask:[Task] = [
    .init(title: "Standup", caption: "Everyday Meeting", date: Date.now,tint: .yellow),
    .init(title: "Kickoff", caption: "Travel App", date: Date.now,tint: .gray),
    .init(title: "UI Design", caption: "Fintech App", date: Date.now,tint: .green),
    .init(title: "Logo Design", caption: "Fintech App", date: Date.now,tint: .yellow)
]


//Date Extension
extension Date {
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}
