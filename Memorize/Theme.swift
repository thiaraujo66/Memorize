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
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .indigo, .lavander, .magenta, .navy, .orange, .oxblood, .periwinkle, .poppy, .purple , .seafoam, .sky, .tan, .teal, .yellow: return .black
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
}
