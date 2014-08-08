//
//  remove.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation


// Return an array for those elements of the SequenceType that do not satisfy the predicate.
func remove<S : SequenceType where S.Generator.Element : Equatable>
    ( seq: S, value: S.Generator.Element) -> [S.Generator.Element]
{
    var values = Array<S.Generator.Element>()
    
    for elem in seq
    {
       if elem != value
       {
            values.append(elem)
       }
    }
    
    return values
}
