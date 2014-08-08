//
//  mismatch.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

/// Checks that both SequenceTypes contain the same elements.
//  If not equal, return the elements in both SequenceTypes that are mismatched. Otherwise, returns nil
func mismatch<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S2.Generator.Element, S1.Generator.Element : Equatable>
    (a1: S1, a2: S2) -> (S1.Generator.Element?,S1.Generator.Element?)
{
    var itr   = Zip2(a1,a2).generate()
    
    while let i = itr.next()
    {
        if i.0 != i.1
        {
            return (i.0,i.1)
        }
    }
    
    return (nil,nil)
}

/// Checks that both SequenceTypes contain the same elements.
// Returns true or false
public func equal_seq<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S2.Generator.Element, S1.Generator.Element : Equatable>
    (a1: S1, a2: S2) -> Bool
{
    return Swift.equal(a1,a2)
}