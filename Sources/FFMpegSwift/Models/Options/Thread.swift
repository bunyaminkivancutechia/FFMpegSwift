//
//  Thread.swift
//
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public struct Thread: CommandLiner {
    let option: Int
    
    public init(_ option: Int) {
        self.option = option
    }
    
    public var text: String {
        "-threads \(option)"
    }
}
