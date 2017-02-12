//
//  NFXStringEncoder.swift
//  netfox
//
//  Created by Yu Sugawara on 2/12/17.
//  Copyright © 2017 kasketis. All rights reserved.
//

import Foundation

public struct NFXStringEncoder {
    
    public static func string(_ data: Data) -> NSString? {
        for encoding in encodings {
            if let string = String(data: data, encoding: encoding) {
                return string as NSString
            }
        }
        return nil
    }
    
    private static let encodings: [String.Encoding] = [
        .utf8,
        .japaneseEUC,
        .shiftJIS,
    ]
    
}
