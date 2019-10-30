//
//  PresenterMock.swift
//  IMCTests
//
//  Created by daianne.gomes.aguiar on 30/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import UIKit
@testable import IMC

class PresenterMock: PresenterProtocol {
    
    var presentResultCalled = false
    var resultRecived = ""
    var imageRecived = ""
    var imcRecived = 0.0
    
    func presentResult(result: String, image: String, imc: Double) {
        presentResultCalled = true
        resultRecived = result
        imageRecived = image
        imcRecived = imc
    }
    
    
}
