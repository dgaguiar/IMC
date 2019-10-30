//
//  InteractorMock.swift
//  IMCTests
//
//  Created by daianne.gomes.aguiar on 30/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import UIKit
@testable import IMC

class InteractorMock: InteractorProtocol {
    
    var convertToDoubleCalled = false
    var calculateResultCalled = false
    var weightRecived = ""
    var heightRecived = ""
    var imcRecived = 0.0
    
    func convertToDouble(weight: String, height: String) {
        convertToDoubleCalled = true
        weightRecived = weight
        heightRecived = height
    }
    
    func calculateResult(imc: Double) {
        calculateResultCalled = true
        imcRecived = imc
    }
    
    
}
