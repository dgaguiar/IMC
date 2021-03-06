//
//  Interactor.swift
//  IMC
//
//  Created by daianne.gomes.aguiar on 27/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//


import UIKit

protocol InteractorProtocol {
    func convertToDouble(weight: String, height: String)
    func calculateResult(imc: Double)
}

class Interactor: InteractorProtocol {
    
    var presenter: PresenterProtocol?
    
    init(presenter: PresenterProtocol) {
        self.presenter = presenter
    }
    
    func convertToDouble(weight: String, height: String) {
        if weight == "" || height == "" {
            presenter?.presentEmptyFieldPopUp()
        }
        let weightFormat = weight.replacingOccurrences(of: ",", with: ".")
        let heightFormat = height.replacingOccurrences(of: ",", with: ".")
        
        if let weightDouble = Double(weightFormat), let heightDouble = Double(heightFormat) {
            let imc = weightDouble / (heightDouble * heightDouble)
            calculateResult(imc: imc)
        } else {
            presenter?.presentNotPossibleCalc()
        }
    }
    
    func calculateResult(imc: Double) {
        var result: String
        var image: String
        switch imc {
        case 0..<16 :
            result = "Magreza"
            image = "magreza"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "abaixo"
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
        presenter?.presentResult(result: result, image: image, imc: imc)
    }
}
