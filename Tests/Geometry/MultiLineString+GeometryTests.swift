/*
 *   MultiLineString+GeometryTests.swift
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
 *   Created by Tony Stone on 4/24/16.
 */
import XCTest

#if SWIFT_PACKAGE
    import Geometry
#else
    import GeoFeatures2
#endif

private let geometryDimension = Dimension.ONE    // MultiLineString are always 1 dimension

// MARK: - Coordinate2D, FloatingPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate2D_FloatingPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FloatingPrecision()
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate2D>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}

// MARK: - Coordinate2DM, FloatingPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate2DM_FloatingPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FloatingPrecision()
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate2DM>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}

// MARK: - Coordinate3D, FloatingPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate3D_FloatingPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FloatingPrecision()
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate3D>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}

// MARK: - Coordinate3DM, FloatingPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate3DM_FloatingPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FloatingPrecision()
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate3DM>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}

// MARK: - Coordinate2D, FixedPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate2D_FixedPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FixedPrecision(scale: 100)
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate2D>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}

// MARK: - Coordinate2DM, FixedPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate2DM_FixedPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FixedPrecision(scale: 100)
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate2DM>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}

// MARK: - Coordinate3D, FixedPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate3D_FixedPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FixedPrecision(scale: 100)
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate3D>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}

// MARK: - Coordinate3DM, FixedPrecision, Cartesian -

class MultiLineString_Geometry_Coordinate3DM_FixedPrecision_Cartesian_Tests : XCTestCase {
    
    let precision = FixedPrecision(scale: 100)
    let crs       = Cartesian()
    
    func testDimension ()   {
        XCTAssertEqual(MultiLineString<Coordinate3DM>(precision: precision, coordinateReferenceSystem: crs).dimension, geometryDimension)
    }
}