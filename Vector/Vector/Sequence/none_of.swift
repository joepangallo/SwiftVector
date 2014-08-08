//
//  none_of.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Determine if none of the elements satisfy the predicate.
func none_of< S : SequenceType, L : BooleanType where S.Generator.Element : Equatable>
    (seq : S, predicate : (S.Generator.Element) -> L ) -> Bool
{
    return any_of(seq, predicate) == false
}