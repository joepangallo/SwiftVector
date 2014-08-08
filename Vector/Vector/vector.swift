//
//  vector.swift
//  Vector
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import Foundation

infix operator  == {}
infix operator  <  {}

func ==<T>(left: vector<T>, right: vector<T>) -> Bool
{
    return  equal_seq(left,right)
}


func < <T>(left: vector<T>, right: vector<T>) -> Bool
{
    return left.size() < right.size()
}


class vector<T : Equatable> : SequenceType,ForwardIndexType
{
    typealias Element = T
    
    private var array = [T]()
    
    // For Sequence protocol
    func generate() -> GeneratorOf<Element>
    {
        var i = 0
        
        return GeneratorOf<Element>
        {
            return i >= self.array.count ? .None : self.array[i++]
        }
    }
    
    // For ForwardIndex protocol
    func successor() -> vector<T>
    {
        var a = array
        a.removeAtIndex(0)
        
        return vector<T>( arr : a)
    }
    
    // Allows vector[index] access.
    subscript ( index : Int ) -> T?
    {        
        if index > array.count - 1
        {
            return nil
        }
            
        return array[index]
    }
    
    // Create vector with an intial 
    // valuel
    init( val : T)
    {
        array.append(val)
    }
    
    // Default initializer
    init()
    {
       
    }
    
    // Intialize vector with
    // 'n' items of value 'v'
    init(n : Int, v : T)
    {
        assign(n,value : v)
    }

    // Intialize vector with
    // the array passed in.
    init( arr : [T])
    {
        array = arr
    }   
    
    // Replace the contents of the array with
    // 'quantity' of 'value'.
    func assign(quantity : Int , value : T)
    {
        array.removeAll(keepCapacity: false)
        
        for var i = 0; i < quantity; ++i
        {
            array.append(value)
        }
    }
    
    // Return the element at the given index.
    func  at( index : Int ) -> T?
    {
        if index < array.count - 1
        {
            return array[index]
        }
        
        return nil
    }
    
    // Return the last element of the array.
    func back() -> T?
    {
        return array.last        
    }
    
    // Return the element at the front.
    // Not exactly the same as C++.
    func begin() -> T?
    {
        return array.first
        
    }
    
    // Return the allocated capacity.
    func capacity() -> Int
    {
        return  array.capacity
    }
    
    // Remove all entries from the array
    func clear()
    {
        array.removeAll(keepCapacity: false)
    }
    
    
    // Return true if the array is empty.
    func empty() -> Bool
    {
        return array.count == 0
    }
   
    
    // Remove the element at the given index.
    func erase ( element : T )
    {
        array = remove(array,element)
    }
    
    // Remove the first element that satisfies the
    // predicate.
    func remove_if ( predicate : (T) -> BooleanType )
    {
        for (index,elem) in enumerate(array)
        {
            if predicate(elem).boolValue == true
            {
                array.removeAtIndex(index)
                return;
            }
        }
    }
    
    // Remove all elements that satisfy the
    // predicate.
    func remove_all ( predicate : (T) -> Bool )
    {
        array = array.filter( predicate )
    }
    
    
    // Return the element at the front
    func front() -> T?
    {
         return array.first
    }
    
    func front(inout val : [T] )
    {
        if array.isEmpty == false
        {
            val = array
        }
    }
    
    // Insert the element at position index)
    func insert( index : Int, value : T )
    {
        array.insert(value, atIndex:index)
    }
    
    
    // Insert the 'value' 'quantity' times at position index)
    func insert( index : Int, quantity : Int, value : T )
    {
        for var i = 0; i < quantity; ++i
        {
            array.insert(value, atIndex:index)
        }
    }
    
    // Insert the range at position.
    func insert<T : ForwardIndexType  >( position : Int, range : Range<T> )
    {
        var i = range.generate()
        
        while let itr = i.next()
        {
            insert(position,range : range)
        }
    }
    
    // Remove the last element in the array
    func pop_back()
    {
        if array.isEmpty == false
        {
            array.removeAtIndex(array.endIndex-1)
        }
    }
    
    // Add the element to the end of the list.
    func push_back(value : T)
    {
        array.append(value)
    }
    
    // Set the capacity
    func reserve(value : Int)
    {
        array.reserveCapacity(value)
    }
    
    // Resize the list to 'value'. If the
    // new values is less than the current
    // size, then remove the items that are
    // beyond the new size.
    func resize( value : Int )
    {
        if value < array.count
        {
            // remove all the items that are
            // past the new size of value.
            for var i = array.count - 1; i >= value; --i
            {
                array.removeAtIndex(i)
            }
        }
        else if value > array.count
        {
            array.reserveCapacity(value)
        }
    }
    
    // Reduce the capacity to the container
    // size
    func shrink_to_fit()
    {
        if  array.capacity > array.count
        {
            array.reserveCapacity(array.count)
        }
    }
    
    func size() -> Int
    {
        return array.count
    }
    
    // Return the internal data
    func getContents() -> [T]
    {
        return array
    }
    
}
