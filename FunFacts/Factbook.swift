//
//  Factbook.swift
//  FunFacts
//
//  Created by Evan Latner on 5/16/15.
//  Copyright (c) 2015 Level Labs. All rights reserved.
//

import Foundation

struct Factbook {
    
    let factsArray = ["So cool", "Oh my this is awesome", "Wowza", "Yeehaw", "Yippi"]
    
    
    func randomFact() -> String {
        
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
}


