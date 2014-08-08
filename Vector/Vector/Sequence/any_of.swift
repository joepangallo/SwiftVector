//
//  any_of.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Determine if any of the elements of the SequenceType satisfies the predicate.
func any_of< S : SequenceType, L : BooleanType where S.Generator.Element : Equatable>
    (seq : S, predicate : (S.Generator.Element) -> L ) -> Bool
{
    for elem in seq
    {
        if predicate(elem).boolValue == true
        {
            return true
        }
    }
    return false
}