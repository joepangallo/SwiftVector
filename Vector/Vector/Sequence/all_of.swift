//
//  all_of.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Determine if all of the elements of the SequenceType satisfy the predicate.
public func all_of< S : SequenceType, L : BooleanType where S.Generator.Element : Equatable>
    (seq : S, predicate : (S.Generator.Element) -> L ) -> Bool
{
    for elem in seq
    {
        if predicate(elem).boolValue == false
        {
            return false
        }
    }
    return true
}