//
//  ViewControllerMock.swift
//  IMCTests
//
//  Created by daianne.gomes.aguiar on 30/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import UIKit
@testable import IMC

class ViewControllerMock: ViewControllerProtocol {
    
    var displayResultCalled = false
    var resultRecived = ""
    var imageRecived = ""
    var imcRecived = 0.0
    
    func displayResult(result: String, image: String, imc: Double) {
        displayResultCalled = true
        resultRecived = result
        imageRecived = image
        imcRecived = imc
    }
    
    
}
