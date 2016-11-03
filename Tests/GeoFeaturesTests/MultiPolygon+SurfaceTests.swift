/*
 *   MultiPolygon+SurfaceTests.swift
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
 *   Created by Tony Stone on 3/29/16.
 */
import XCTest

import GeoFeatures

// MARK: - Coordinate2D, FixedPrecision, Cartesian -

class MultiPolygon_Surface_Coordinate2D_FixedPrecision_Cartesian_Tests: XCTestCase {

    let precision = FixedPrecision(scale: 100000)
    let crs       = Cartesian()
    
    func testArea_Empty() {
        XCTAssertEqual(MultiPolygon<Coordinate2D>(precision: precision, coordinateReferenceSystem: crs).area(), 0.0)
    }

}