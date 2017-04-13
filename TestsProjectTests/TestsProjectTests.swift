//
//  TestsProjectTests.swift
//  TestsProjectTests
//
//  Created by Usuário Convidado on 12/04/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import XCTest
@testable import TestsProject

class TestsProjectTests: XCTestCase {
    
    var vc: ViewController!
    
    // Roda antes de cada teste
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        // TODO: Dahell's instrumented test?
    }
    
    // Roda depois de cada teste
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetName() {
        
        let _ = vc.view // Gambi-arr-a
        
        let name = vc.getName(name: "João")
        // Esperado: Nome: João
        
        // Validar se passou ou não
        XCTAssertTrue(name == "Nome: João")
        
    }
    
}
