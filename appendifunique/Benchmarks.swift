//
//  Benchmarks.swift
//  appendifunique
//
//  Created by forCodeSake on 02/05/2016.
//  Copyright © 2016 forCodeSake. All rights reserved.
//

import Foundation

struct Benchmarks
{
    static func testNumbersSetToArray(size:Int) {
        var set = Set<Int>()
        
        while set.count < size {
            set.insert(set.count + 1)
        }
        
        let _ = Array(set)
    }
    
    static func testAppendIfUnique(size:Int) {
        var numbers = [Int]()
        
        while numbers.count < size {
            numbers.appendIfUnique(numbers.count + 1)
        }
    }
    
    static func testArrayContains(size:Int) {
        var numbers = [Int]()
        
        while numbers.count < size {
            if !numbers.contains(numbers.count + 1)
            {
                numbers.append(numbers.count + 1)
            }
        }
    }

}

extension Array where Element:Equatable
{
    mutating func appendIfUnique(newElement:Element){
        var unique:Bool = true
        for item in self where newElement == item
        {
            unique = false
            break
        }
        if unique
        {
            self.append(newElement)
        }
    }
}