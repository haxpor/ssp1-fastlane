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
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
<<<<<<< HEAD
        XCUIDevice.shared().orientation = .faceUp
        XCUIDevice.shared().orientation = .faceUp
        
        let app = XCUIApplication()
        let usernameElementsQuery = app.otherElements.containing(.staticText, identifier:"Username")
        let textField = usernameElementsQuery.children(matching: .textField).element
        textField.tap()
        textField.typeText("wasin")
        
        // test
        XCTAssert(textField.value as! String == "wasin");
        
        let secureTextField = usernameElementsQuery.children(matching: .secureTextField).element
        secureTextField.tap()
        secureTextField.typeText("thisisabook")
        
        app.buttons["Switch"].tap()
=======
>>>>>>> 617b9c32c42c208a4f3aa5978374e96ece3f10a7
    }
    
}
