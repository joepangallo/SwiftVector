//
//  copy_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Copy and return all values in the SequenceType that satisfies the predicate.
func copy_if<S : SequenceType, L : BooleanType>
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
