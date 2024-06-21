//
//  +View.swift
//  Task Manager
//
//  Created by Kevin Fairuz on 19/06/24.
//

import SwiftUI

extension View {
    @ViewBuilder
    func hSpacing(_ alignment: Alignment) -> some View {
        self.frame(maxWidth: .infinity, alignment: alignment)
    }    
    func vSpacing(_ alignment: Alignment) -> some View {
        self.frame(maxWidth: .infinity, alignment: alignment)
    }
    
    // checking two dates are same
    func isSameDate(_ date1: Date, _ date2: Date) -> Bool {
        return Calendar.current.isDate(date1, inSameDayAs: date2)
    }
}
