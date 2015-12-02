//
//  SnapshottingUITests.swift
//  SnapshottingUITests
//
//  Created by Jelle Vandebeeck on 02/12/15.
//  Copyright © 2015 Jelle Vandebeeck. All rights reserved.
//

import XCTest

class SnapshottingUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        let app = XCUIApplication()
        setLanguage(app)
        app.launch()
    }
    
    func testFlow() {
        // Create home screen snapshot.
        snapshot("0Home")
        
        // Create el capitan snapshot.
        let app = XCUIApplication()
        app.tables.cells.elementBoundByIndex(0).tap()
        snapshot("1Capitan")
        
        // Create yosemite snapshot.
        let backButton = app.navigationBars["Snapshotting.DetailView"].buttons.elementBoundByIndex(0)
        backButton.tap()
        app.tables.cells.elementBoundByIndex(1).tap()
        snapshot("2Yosemite")
        
        // Create mavericks snapshot.
        backButton.tap()
        app.tables.cells.elementBoundByIndex(2).tap()
        snapshot("3Mavericks")        
    }
}
