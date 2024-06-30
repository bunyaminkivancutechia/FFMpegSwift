//
//  Codec.swift
//  
//
//  Created by Mahdi BND on 6/15/24.
//

import Foundation

public struct Codec: CommandLiner {
    var option: CodecOption
    
    public var text: String { option.text }
}
