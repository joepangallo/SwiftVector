//
//  find.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Find and return the index of the first occurrence of the value in the collection
func find_coll<C : CollectionType where C.Generator.Element : Equatable>
    (coll: C, value: C.Generator.Element) -> C.Index?
{
    return Swift.find(coll,value)
}


// Find and return the index of the first occurrence of the value in the SequenceType
// based on the prdicate.
func find_seq<L : BooleanType, S : SequenceType where S.Generator.Element : Equatable >
    (seq: S, value : S.Generator.Element, predicate : (S.Generator.Element) -> L)  -> Int?
{
   return find_if_index(seq,value,predicate)
}
