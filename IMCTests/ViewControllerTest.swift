//
//  ViewControllerTest.swift
//  IMCTests
//
//  Created by daianne.gomes.aguiar on 30/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import UIKit
import XCTest
@testable import IMC

class ViewControllerTest: XCTestCase {
   
    var interactor: InteractorMock!
    var viewTest: ViewController!

    override func setUp() {
        interactor = InteractorMock()
        viewTest = ViewController(interactor: interactor)
    }
    
    func testDisplayResult() {
        let resultMock = "23"
        let resultImageMock = "212"
        let imcMock = 0.0
        
        viewTest.displayResult(result: resultMock, image: resultImageMock, imc: imcMock)
        
        XCTAssertEqual(viewTest.resultLabel?.text, "\(Int(imcMock)) : \(resultMock)")
        XCTAssertEqual(viewTest.resultImage?.image, UIImage(named: resultImageMock))
        XCTAssertTrue(viewTest.resultView?.isHidden ?? true)
    }
    
}
