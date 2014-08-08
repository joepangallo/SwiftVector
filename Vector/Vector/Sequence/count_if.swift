//
//  count_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Return the count of all the elements in 'seq' that satisfy the predicate.
func count_if<L : BooleanType, S : SequenceType where S.Generator.Element : Equatable>
    (seq: S, predicate : (S.Generator.Element) -> L ) -> Int
{
    var count = 0
    
    for elem in seq
    {
        if predicate(elem).boolValue == true
        {
            ++count
        }
    }
    
    return count
}