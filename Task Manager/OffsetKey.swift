//
//  OffsetKey.swift
//  Task Manager
//
//  Created by Kevin Fairuz on 20/06/24.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static let defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

