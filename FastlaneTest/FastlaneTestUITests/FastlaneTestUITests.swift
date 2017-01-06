//
//  FastlaneTestUITests.swift
//  FastlaneTestUITests
//
//  Created by Wasin Thonkaew on 1/5/17.
//  Copyright © 2017 Wasin Thonkaew. All rights reserved.
//

import XCTest

class FastlaneTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        
        // modified to integrate with snapshot
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUsernameIsWasin() {
        let firstnametextfieldTextField = XCUIApplication().textFields["firstNameTextField"]
        firstnametextfieldTextField.tap()
        firstnametextfieldTextField.typeText("wasin")

        XCTAssert(firstnametextfieldTextField.value as! String == "wasin")
        
        // take a snapshot
        snapshot("usernameWasin")
    }
    
    func testLastnameIsThonkaew() {
        let lastnametextfieldTextField = XCUIApplication().textFields["lastNameTextField"]
        lastnametextfieldTextField.tap()
        lastnametextfieldTextField.typeText("thonkaew")
        
        XCTAssert(lastnametextfieldTextField.value as! String == "thonkaew")
        
        // take a snapshot
        snapshot("lastnameWasin")
    }
    
    func testShowNewPage() {
        let app = XCUIApplication()
        var backButton = app.buttons["backButton"]
        // backbutton should not exist
        XCTAssert(backButton.exists == false)
        
        let openButton = app.buttons["openButton"]
        openButton.tap()
        
        // query back button again
        backButton = app.buttons["backButton"]
        // check exists
        XCTAssert(backButton.exists)
        
        // take a snapshot
        snapshot("newpage")
    }
}
