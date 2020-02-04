//
//  InteractorTest.swift
//  IMCTests
//
//  Created by daianne.gomes.aguiar on 30/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import Foundation
import XCTest
@testable import IMC

class InteratorTest: XCTestCase {
    
    var interactor: Interactor!
    var presenterMock: PresenterMock!
    
    override func setUp() {
        super.setUp()
        presenterMock = PresenterMock()
        interactor = Interactor(presenter: presenterMock)
    }
    
    func testConvertToDouble() {
        let weightMock = "70.8"
        let heightMock = "1.6"
        interactor.convertToDouble(weight: weightMock, height: heightMock)
        
    }
    
    
}
