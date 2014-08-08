//
//  replace_if.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Replace those elements that satisfy the predicate.
func replace_if<S : SequenceType , L : BooleanType where S.Generator.Element : Equatable >
    (  seq: S,  newValue: S.Generator.Element,predicate : (S.Generator.Element) -> L ) ->[S.Generator.Element]
{
    var values = Array<S.Generator.Element>(seq)
    
    for (index,elem) in enumerate(seq)
    {
        if predicate(elem).boolValue == true
        {
            values[index] = newValue
        }
    }
    
    return values
}