//
//  find_first_of.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation


// Return the first element in seq1 that matches a value in seq2.
func find_first_of<S : SequenceType where S.Generator.Element : Comparable>
    (seq1: S, seq2: S) -> S.Generator.Element?
{
    for ele in seq1
    {
        if contains(seq2,ele) == true
        {
            return ele
        }
    }
    
    return nil
}

// Return the first element in seq1 that matches a value in seq2
// based on the predicate.
func find_first_of<L : BooleanType, S : SequenceType where S.Generator.Element : Comparable>
    (seq1: S, seq2: S, predicate : (S.Generator.Element) -> L) -> S.Generator.Element?
{
    for ele in seq1
    {
        if contains(seq2,ele) == true
        {
            if predicate(ele).boolValue == true
            {
                return ele
            }
        }
    }
    
    return nil
}