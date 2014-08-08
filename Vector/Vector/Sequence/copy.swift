//
//  copy.swift
//  CPP_Wrappers
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

// Copies the contents of the SequenceType into an array and returns the array.
public func copy_seq<S : SequenceType > (seq: S) -> [S.Generator.Element]
{
    var itr   = seq.generate()
    var seq2  =  Array<S.Generator.Element>()
    
    while let i = itr.next()
    {
        seq2.append(i)
    }
    
    return seq2
}