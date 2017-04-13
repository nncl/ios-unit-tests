//
//  TestsProjectUITests.swift
//  TestsProjectUITests
//
//  Created by Usuário Convidado on 12/04/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import XCTest

class TestsProjectUITests: XCTestCase {
    
    var app = XCUIApplication!
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication() // Acesso à app fora daqui
        app.launch()
        
        let app = XCUIApplication()
        let nomeTextField = app.textFields["Nome"]
        nomeTextField.tap()
        
        let nomeTextField = XCUIApplication().textFields["Nome"]
        nomeTextField.tap()
        nomeTextField.typeText("caue")
        nomeTextField.tap()
        app.otherElements.containing(.textField, identifier:"Nome").element.tap()
        nomeTextField.tap()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLabel() {
        
    }
    
}
