//
//  unique.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Remove all duplicate adjacent values.
func unique<S : SequenceType where S.Generator.Element : Comparable >
    ( seq: S) -> [S.Generator.Element]
{
    var values = Array<S.Generator.Element>()
    var prev   : S.Generator.Element?
    
    var itr = seq.generate()
    
    while let i = itr.next()
    {
        if i != prev
        {
            values.append(i)
        }
        
        prev = i
    }
    
    return values
}