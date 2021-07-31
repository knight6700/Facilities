//
//  FacilitiesTests.swift
//  FacilitiesTests
//
//  Created by Mahmoud Fares on 31/07/2021.
//

import XCTest
@testable import Facilities
class FacilitiesTests: XCTestCase {
    var viewModel:HomeViewModel?
    
    override func setUpWithError() throws {
        viewModel = HomeViewModel()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        viewModel = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPageNumberEqualOne() {
        XCTAssertEqual(viewModel?.pageNumber, 1, "Not Equal One")
    }
    
    func testDetailsViewModel() {
        let viewModelDetails =   viewModel?.setupDetailsViewModel(facility: FacilitiesMockAp.departmentSample)
        XCTAssertNotNil(viewModelDetails)
    }
    /// in First Run
    func testFaciltiesCountEqualZero() {
        XCTAssertEqual(viewModel?.facilitiesModel.count, 0, "Not Equal One ")
    }
    
    
}
