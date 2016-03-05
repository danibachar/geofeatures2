/*
*   LineStringCoordinate3DFixedPrecisionTests.swift
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
 *   Created by Tony Stone on 2/10/16.
 */
import XCTest
@testable import GeoFeatures2


/*
    NOTE: This file was auto generated by gyb from file CoordinateCollectionTests.swift.gyb using the following command.

    ~/gyb --line-directive '' -DCoordinateType=Coordinate3D -D"TestTuple0=(x: 1.001, y: 1.001, z: 1.001)" -D"TestTuple1=(x: 2.002, y: 2.002, z: 2.002)" -D"ExpectedTuple0=(x: 1.0, y: 1.0, z: 1.0)" -D"ExpectedTuple1=(x: 2.0, y: 2.0, z: 2.0)" -D"Precision=FixedPrecision(scale: 100)" -DGeometryType=LineString -o LineStringCoordinate3DFixedPrecisionTests.swift CoordinateCollectionTests.swift.gyb

    Do NOT edit this file directly as it will be regenerated automatically when needed.
*/

class LineStringCoordinate3DFixedPrecisionTests : XCTestCase {

    // MARK: Init
    
    func testInit_NoArg ()   {
        XCTAssertEqual(LineString<Coordinate3D>(precision: FixedPrecision(scale: 100)).isEmpty, true)
    }
    
    func testInit_Tuple () {
    
        XCTAssertEqual(
            (LineString<Coordinate3D>(elements: [(x: 1.001, y: 1.001, z: 1.001),(x: 2.002, y: 2.002, z: 2.002)], precision: FixedPrecision(scale: 100)).elementsEqual([Coordinate3D(tuple: (x: 1.0, y: 1.0, z: 1.0)), Coordinate3D(tuple: (x: 2.0, y: 2.0, z: 2.0))])
                { (lhs: Coordinate3D, rhs: Coordinate3D) -> Bool in
                    return lhs == rhs
            }
        ), true)
    }
    
    // MARK: CollectionType
    
    func testSubscript_Get () {
        let lineString = LineString<Coordinate3D>(elements: [(x: 1.001, y: 1.001, z: 1.001),(x: 2.002, y: 2.002, z: 2.002)], precision: FixedPrecision(scale: 100))
        
        XCTAssertEqual(lineString[1] == Coordinate3D(tuple: (x: 2.0, y: 2.0, z: 2.0)), true)
    }
    
    func testSubscript_Set () {
        var lineString = LineString<Coordinate3D>(elements: [(x: 1.001, y: 1.001, z: 1.001),(x: 2.002, y: 2.002, z: 2.002)], precision: FixedPrecision(scale: 100))
        
        lineString[1] = Coordinate3D(tuple: (x: 1.001, y: 1.001, z: 1.001))
        
        XCTAssertEqual(lineString[1] ==  Coordinate3D(tuple: (x: 1.0, y: 1.0, z: 1.0)), true)
    }
    
    func testAppendContentsOf_LineString () {
        
        let lineString1 = LineString<Coordinate3D>(elements: [(x: 1.001, y: 1.001, z: 1.001),(x: 2.002, y: 2.002, z: 2.002)], precision: FixedPrecision(scale: 100))
        var lineString2 = LineString<Coordinate3D>(precision: FixedPrecision(scale: 100))
        
        lineString2.appendContentsOf(lineString1)
        
        XCTAssertEqual(lineString1 == lineString2, true)
    }
    
    func testAppendContentsOf_Array () {
        
        var lineString2 = LineString<Coordinate3D>(precision: FixedPrecision(scale: 100))
        
        lineString2.appendContentsOf([Coordinate3D(tuple: (x: 1.001, y: 1.001, z: 1.001)), Coordinate3D(tuple: (x: 2.002, y: 2.002, z: 2.002))])
        
        XCTAssertEqual(lineString2.elementsEqual([Coordinate3D(tuple: (x: 1.0, y: 1.0, z: 1.0)), Coordinate3D(tuple: (x: 2.0, y: 2.0, z: 2.0))]) { (lhs: Coordinate3D, rhs: Coordinate3D) -> Bool in
            return lhs == rhs
        }, true)
    }
    
    // MARK: Equal
    
    func testEquals () {
        XCTAssertEqual(LineString<Coordinate3D>(elements: [Coordinate3D(tuple: (x: 1.001, y: 1.001, z: 1.001)), Coordinate3D(tuple: (x: 2.002, y: 2.002, z: 2.002))], precision: FixedPrecision(scale: 100)).equals(LineString<Coordinate3D>(elements: [Coordinate3D(tuple: (x: 1.0, y: 1.0, z: 1.0)), Coordinate3D(tuple: (x: 2.0, y: 2.0, z: 2.0))])), true)
    }
    
    // MARK: isEmpty
    
    func testIsEmpty () {
        XCTAssertEqual(LineString<Coordinate3D>(precision: FixedPrecision(scale: 100)).isEmpty(), true)
    }
    
    func testIsEmpty_False() {
        XCTAssertEqual(LineString<Coordinate3D>(elements: [Coordinate3D(tuple: (x: 1.001, y: 1.001, z: 1.001)), Coordinate3D(tuple: (x: 2.002, y: 2.002, z: 2.002))], precision: FixedPrecision(scale: 100)).isEmpty(), false)
    }
    
    func testCount () {
        XCTAssertEqual(LineString<Coordinate3D>(elements: [Coordinate3D(tuple: (x: 1.001, y: 1.001, z: 1.001)), Coordinate3D(tuple: (x: 2.002, y: 2.002, z: 2.002))], precision: FixedPrecision(scale: 100)).count, 2)
    }
    
    func testAppend () {
        var lineString = LineString<Coordinate3D>(precision: FixedPrecision(scale: 100))
        
        lineString.append((x: 1.001, y: 1.001, z: 1.001))
        
        XCTAssertEqual(lineString.elementsEqual([Coordinate3D(tuple: (x: 1.0, y: 1.0, z: 1.0))])
            { (lhs: Coordinate3D, rhs: Coordinate3D) -> Bool in
                return lhs == rhs
        }, true)
    }

}
