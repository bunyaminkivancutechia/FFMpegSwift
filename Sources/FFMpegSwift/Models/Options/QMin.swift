//
//  QMin.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public struct QMin: CommandLiner {
    let option: Int
    
    public init(_ option: Int = 16) {
        self.option = option
    }
    
    public var text: String {
        "-qmin \(option)"
    }
}
