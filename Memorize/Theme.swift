//
//  Theme.swift
//  Memorize
//
//  Created by user244584 on 10/11/23.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavander
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    case red
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavander, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple, .red: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    
    var cardColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavander, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        case .red: return Color.red
        case .orange: return Color.orange
        }
    }
}
