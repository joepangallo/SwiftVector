//
//  find_if_not.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Return the first element that does not satisfy the predicate.
func find_if_not<S : SequenceType, L : BooleanType>(
    seq: S, predicate: (S.Generator.Element) -> L) -> S.Generator.Element?
{
    for elem in seq
    {
        if predicate(elem).boolValue == false
        {
            return elem
        }
    }
    
    return nil
}