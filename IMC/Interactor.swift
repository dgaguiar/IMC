//
//  Interactor.swift
//  IMC
//
//  Created by daianne.gomes.aguiar on 27/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import Foundation
import UIKit

protocol InteractorProtocol {
    func convertToDouble(weight: String, height: String)
    func calculateResult()
}

class Interactor: InteractorProtocol {
    
    var presenter: PresenterProtocol?
    var weightDouble: Double!
    var heightDouble: Double!
    
    func convertToDouble(weight: String, height: String) {
        weightDouble = Double(weight)
        heightDouble = Double(height)
        calculateResult()
    }
    
    func calculateResult() {
        let imc = weightDouble / (heightDouble*heightDouble)
        var result: String
        var image: String
        switch imc {
        case 0..<16 :
            result = "Magreza"
            image = "abaixo"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "ideal"
        case 18.5..<25:
            result = "Peso Ideal"
            image = "ideal"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
        }
        presenter?.presentResult(result: result, image: image)
    }
}