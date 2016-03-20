/*
 *   Coordinate2DM.swift
 *
 *   Copyright 2016 Tony Stone
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 *
 *   Created by Tony Stone on 2/21/16.
 */
import Swift

/**
    Measuted 2D Coordinate
 
    Low level 2 dimensional Coorodinate type with an m value.
 */
public class Coordinate2DM : Coordinate, Measured, TupleConvertable  {
    
    public typealias TupleType = (x: Double, y: Double, m: Double)
    
    public let x: Double
    public let y: Double
    public let m: Double
    
    public var tuple: TupleType {
        get { return (x: self.x, y: self.y, m: self.m)  }
    }

    public required init(tuple: TupleType) {
        self.x = tuple.x
        self.y = tuple.y
        self.m = tuple.m
    }
    
    public required init(tuple: TupleType, precision: Precision) {
        self.x = precision.convert(tuple.x)
        self.y = precision.convert(tuple.y)
        self.m = precision.convert(tuple.m)
    }
    
    public required init(coordinate: Coordinate2DM) {
        self.x = coordinate.x
        self.y = coordinate.y
        self.m = coordinate.m
    }
    
    public required init(coordinate: Coordinate2DM, precision: Precision) {
        self.x = precision.convert(coordinate.x)
        self.y = precision.convert(coordinate.y)
        self.m = precision.convert(coordinate.m)
    }
    
    public required init(array: [Double]) {
        precondition(array.count == 3)
        self.x = array[0]
        self.y = array[1]
        self.m = array[2]
    }
}

public func ==(lhs: Coordinate2DM, rhs: Coordinate2DM) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y && lhs.m == rhs.m
}

extension Coordinate2DM : CustomStringConvertible, CustomDebugStringConvertible {
    
    public var description : String {
        return "(x: \(self.x), y: \(self.y), m: \(self.m))"
    }
    
    public var debugDescription : String {
        return self.description
    }
}
