//
//  ProfileThreadFilter.swift
//  SwiftUIThreadsClone
//
//  Created by Medhat Mebed on 2/9/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads, replies
    var id: Int { return self.rawValue}
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
        }
    }
}
