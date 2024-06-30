//
//  AdaptiveQuantization.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

/// Set adaptive quantization mode (`aq-mode`)
public enum AdaptiveQuantization: Int, CommandLiner {
    /// Disabled = 0
    case `none` = 0
    /// Variance-based = 1
    case variance = 1
    /// Complexity-based = 2
    case complexity = 2
    /// Cyclic refresh = 3
    case cyclic = 3
    
    public var text: String {
        "-aq-mode \(rawValue)"
    }
}
