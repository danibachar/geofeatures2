/*
*   MultiPointCoordinate2DMFloatingPrecisionTests.swift
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
*   Created by Tony Stone on 3/6/16.
 */
import XCTest
import GeoFeatures2

/*
    NOTE: This file was auto generated by gyb from file MultiPointTests.swift.gyb using the following command.

    ~/gyb --line-directive '' -DCoordinateType=Coordinate2DM -D"TestTuple0=(x: 1.0, y: 1.0, m: 1.0)" -D"TestTuple1=(x: 2.0, y: 2.0, m: 2.0)" -D"ExpectedTuple0=(x: 1.0, y: 1.0, m: 1.0)" -D"ExpectedTuple1=(x: 2.0, y: 2.0, m: 2.0)" -D"Precision=FloatingPrecision()" -o MultiPointCoordinate2DMFloatingPrecisionTests.swift MultiPointTests.swift.gyb

    Do NOT edit this file directly as it will be regenerated automatically when needed.
*/

class MultiPointCoordinate2DMFloatingPrecisionTests : XCTestCase {

    // MARK: Init
    
    func testInit_NoArg ()   {
        XCTAssertEqual(MultiPoint<Coordinate2DM>(precision: FloatingPrecision()).isEmpty, true)
    }
    
    func testInit_Tuple () {
    
        XCTAssertEqual(
            (MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision()).elementsEqual([Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))])
                { (lhs: Point<Coordinate2DM>, rhs: Point<Coordinate2DM>) -> Bool in
                    return lhs == rhs
            }
        ), true)
    }
    
    // MARK: CollectionType
    
    func testSubscript_Get () {
        let geometry = MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision())
        
        XCTAssertEqual(geometry[1] == Point<Coordinate2DM>(coordinate: (x: 2.0, y: 2.0, m: 2.0)), true)
    }
    
    func testSubscript_Set () {
        var geometry = MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision())
        
        geometry[1] = Point(coordinate: (x: 1.0, y: 1.0, m: 1.0))
        
        XCTAssertEqual(geometry[1] == Point<Coordinate2DM>(coordinate: (x: 1.0, y: 1.0, m: 1.0)), true)
    }
    
    func testAppendContentsOf_MultiPoint () {
        
        let geometry1 = MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision())
        var geometry2 = MultiPoint<Coordinate2DM>(precision: FloatingPrecision())
        
        geometry2.append(contentsOf: geometry1)
        
        XCTAssertEqual(geometry1 == geometry2, true)
    }
    
    func testAppendContentsOf_Array () {
        
        var geometry = MultiPoint<Coordinate2DM>(precision: FloatingPrecision())
        
        geometry.append(contentsOf: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))])
        
        XCTAssertEqual(geometry.elementsEqual([Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))]) { (lhs: Point<Coordinate2DM>, rhs: Point<Coordinate2DM>) -> Bool in
            return lhs == rhs
        }, true)
    }
    
    // MARK: Equal
    
    func testEquals () {
        XCTAssertEqual(MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision()).equals(MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision())), true)
    }
    
    // MARK: isEmpty
    
    func testIsEmpty () {
        XCTAssertEqual(MultiPoint<Coordinate2DM>(precision: FloatingPrecision()).isEmpty(), true)
    }
    
    func testIsEmpty_False() {
        XCTAssertEqual(MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision()).isEmpty(), false)
    }
    
    func testCount () {
        XCTAssertEqual(MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision()).count, 2)
    }
    
    func testAppend () {
        var geometry = MultiPoint<Coordinate2DM>(precision: FloatingPrecision())
        
        geometry.append(Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)))
        
        XCTAssertEqual(geometry.elementsEqual([Point(coordinate: (x: 1.0, y: 1.0, m: 1.0))])
            { (lhs: Point<Coordinate2DM>, rhs: Point<Coordinate2DM>) -> Bool in
                return lhs == rhs
        }, true)
    }

    func testRemoveAll () {
        var geometry = MultiPoint<Coordinate2DM>(elements: [Point(coordinate: (x: 1.0, y: 1.0, m: 1.0)),Point(coordinate: (x: 2.0, y: 2.0, m: 2.0))], precision: FloatingPrecision())

        geometry.removeAll()

        XCTAssertEqual(geometry.isEmpty(), true)
    }

}
