//
//  File.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

extension Array where Element == Option {
    func getString() -> String {
        self.map(\.option.text).joined(separator: " ")
    }
}
