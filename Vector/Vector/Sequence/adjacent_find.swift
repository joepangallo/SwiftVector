//
//  adjacent_file.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Iterates through the SequenceType to find the first matching
// adjacent values. Returns the matching value.
func adjacent_find<S : SequenceType where S.Generator.Element : Comparable >
    ( seq: S) -> S.Generator.Element?
{
    var prev : S.Generator.Element?
    
    var itr = seq.generate()
    
    while let i = itr.next()
    {
        if i == prev
        {
            return i
        }
        
        prev = i
    }
    
    return nil
}