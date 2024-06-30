//
//  QMax.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public struct QMax: CommandLiner {
    let option: Int
    
    public init(_ option: Int = 51) {
        self.option = option
    }
    
    public var text: String {
        "-qmax \(option)"
    }
}
