//
//  remove_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Return an array for those elements of the SequenceType that do not satisfy the predicate.
public func remove_if<S : SequenceType, L : BooleanType>
    ( seq: S, predicate: (S.Generator.Element) -> L) -> [S.Generator.Element]
{
    var values = Array<S.Generator.Element>()
    
    var itr = seq.generate()
    
    while let i = itr.next()
    {
        if predicate(i).boolValue == false
        {
            values.append(i)
        }
    }
    
    return values
}