//
//  find_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Find and return the first value in the SequenceType that satisfies the predicate.
func find_if<S : SequenceType, L : BooleanType>
    (seq: S, predicate: (S.Generator.Element) -> L) -> S.Generator.Element?
{
    for elem in seq
    {
        if predicate(elem).boolValue  == true
        {
            return elem
        }
    }
    
    return nil
}

// Find and return the index of the first occurrence of the value in the SequenceType
// based on the prdicate.
func find_if_index<L : BooleanType, S : SequenceType where S.Generator.Element : Equatable >
    (seq: S, value : S.Generator.Element, predicate : (S.Generator.Element) -> L)  -> Int?
{
    var val : Int?
    
    for (ind,elem) in enumerate(seq)
    {
        if predicate(elem).boolValue == true
        {
            return ind
        }
    }
    
    return val
}