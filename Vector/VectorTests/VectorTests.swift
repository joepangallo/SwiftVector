//
//  VectorTests.swift
//  VectorTests
//
//  Created by Joe Pangallo.
//  Copyright (c) 2014 Joe Pangallo. All rights reserved.
//

import UIKit
import XCTest

infix operator == {}

class VectorTests: XCTestCase
{
   
    func testInit()
    {
       var v = vector<Int>()
       XCTAssertEqual(v.size(),0 )
        
       var v2 = vector<Int>(val : 2)
       XCTAssertEqual(v2.size(),1 )
    
       var v3 = vector<Int>(n: 5, v: 10)
       XCTAssertEqual(v3.size(),5 )
        
       var v4 = vector<Int>(arr: Array(1...5) )
       XCTAssertEqual(v3.size(),5 )
    }
    
    func testAssign()
    {
        var v = vector<Int>()
        v.assign(5, value: 20)
        XCTAssertEqual(v.size(),5 )
    }
    
    func testAt()
    {
        var v = vector<Int>(arr: Array(1...5))
        
        if let val = v.at(2)
        {
           XCTAssertEqual(val,3 )
        }
        else
        {
            XCTAssertNil("Value is nil")
        }       
    }
    
    
    func testBack()
    {
        var v = vector<Int>(arr: Array(1...5))
        
        if let back = v.back()
        {
            XCTAssertEqual(back,5 )
        }        
    }
    
    func testBegin()
    {
        var v = vector<Int>(arr: Array(1...5))
        
        if let b = v.begin()
        {
            XCTAssertEqual(b,1 )
        }
    }
    
    func testCapacity()
    {
        var v = vector<Int>(arr: Array(1...5))
        XCTAssertEqual(v.capacity(),5)
    }
    
    
    func testClear()
    {
        var v = vector<Int>(arr: Array(1...5))
        XCTAssertEqual(v.size(),5)
        v.clear()
        XCTAssertEqual(v.size(),0)
    }
    
    func testEmpty()
    {
        var v = vector<Int>(arr: Array(1...5))
        XCTAssertEqual(v.size(),5)
        v.clear()
        XCTAssertEqual(v.empty(),true)
    }
    
    
    func testFront()
    {
        var v = vector<Int>(arr: Array(1...5))
        
        if let back = v.front()
        {
            XCTAssertEqual(back,1)
        }
    }
    
    func testInsert()
    {
        var v = vector<Int>(arr: Array(1...5))
        v.insert(2,value: 10)
        XCTAssertTrue(v[2] == 10)
    }
    
    func testInsert2()
    {
        var v = vector<Int>(arr: Array(1...5))
        v.insert(2,quantity: 3,value: 10)
        XCTAssertTrue(v[2] == 10)
        XCTAssertTrue(v[3] == 10)
        XCTAssertTrue(v[4] == 10)
    }

    
    func testPopBack()
    {
        var v = vector<Int>(arr: Array(1...5))
        v.pop_back()
        
        if let back = v.back()
        {
            XCTAssertTrue(back == 4)
        }
    }
    
    func testPushBack()
    {
        var v = vector<Int>(arr: Array(1...5))
        v.push_back(6)
        
        if let back = v.back()
        {
            XCTAssertTrue(back == 6)
        }
    }
    
    func testReserve()
    {
        var v = vector<Int>()
        v.reserve(10)
        XCTAssertTrue(v.capacity() == 10)
        
    }
    
    
    func testResize()
    {
        var v = vector<Int>(arr: Array(1...10))
        v.resize(5)
        XCTAssertTrue(v.size() == 5)
        XCTAssertTrue(v.capacity() == 10)
        
        var v2 = vector<Int>(arr: Array(1...10))
        v2.resize(15)
        XCTAssertTrue(v2.size() == 10)
        XCTAssertTrue(v2.capacity() == 16)
    }
    
    
    func testShrinkToFIt()
    {
        var v = vector<Int>(arr: Array(1...10))
        v.reserve(30)
        XCTAssertTrue(v.capacity() == 32)
        v.shrink_to_fit()
        XCTAssertTrue(v.size() == 10)
        XCTAssertTrue(v.capacity() == 10)
    }
    
    func testSize()
    {
        var v = vector<Int>(arr: Array(1...10))
        XCTAssertTrue(v.size() == 10)
    }
    
    func testRemoveIf()
    {
        var v = vector<Int>(arr: Array(1...10))
        XCTAssertTrue(v.size() == 10)
        v.remove_if( {$0 == 3} )
        XCTAssertTrue(v.size() == 9)
    }
    
    func testRemoveAll()
    {
        var v = vector<Int>(arr: Array(1...10))
        XCTAssertTrue(v.size() == 10)
        v.remove_all( {$0 < 0} )
        XCTAssertTrue(v.empty() == true )
    }
}
