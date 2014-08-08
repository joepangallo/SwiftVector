//
//  find_if_all.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Find and return an array that has all of the values in the SequenceType that satisfy the predicate.
func find_if_all<S : SequenceType , L : BooleanType>
    (seq: S, predicate: (S.Generator.Element) -> L) -> [S.Generator.Element]
{
    var values = Array<S.Generator.Element>()
    
    for elem in seq
    {
        if predicate(elem).boolValue == true
        {
            values.append(elem)
        }
    }
    
    return values
}