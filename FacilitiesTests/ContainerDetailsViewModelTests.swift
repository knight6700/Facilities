//
//  ContainerDetailsViewModelTests.swift
//  FacilitiesTests
//
//  Created by Mahmoud Fares on 31/07/2021.
//

import XCTest
@testable import Facilities
class ContainerDetailsViewModelTests: XCTestCase {
    var viewModel: ContainerDetailsViewModel?
    override func setUpWithError() throws {
        viewModel = ContainerDetailsViewModel(facility: FacilitiesMockUp.departmentSample)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        viewModel = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testImageSourceShouldBeUrl() {
        let url = URL(string: viewModel?.imageSrc ?? "")
        XCTAssertNotNil(url)
    }

    func testBriefNotNil() {
        XCTAssertNotNil(viewModel?.brief)
    }
    
    func testTitleNotNil() {
        XCTAssertNotNil(viewModel?.title)
    }
    
    func testPrerequisiteNotNil() {
        XCTAssertNotNil(viewModel?.prerequisite)
    }
    
    func testRequiredDocumentNotNil() {
        XCTAssertNotNil(viewModel?.requiredDocument)
    }
    
    func testFeesNotNil() {
        XCTAssertNotNil(viewModel?.fees)
    }

    func testTimeNotNil() {
        XCTAssertNotNil(viewModel?.time)
    }
    
    func testServiceChannelNotNil() {
        XCTAssertNotNil(viewModel?.serviceChannel)
    }
    

}
