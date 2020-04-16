//
//  Presenter.swift
//  IMC
//
//  Created by daianne.gomes.aguiar on 27/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import Foundation
import UIKit

protocol PresenterProtocol {
    func presentResult(result: String, image: String, imc: Double)
    func presentEmptyFieldPopUp()
    func presentNotPossibleCalc()
}

class Presenter: PresenterProtocol {
    
    weak var view: ViewControllerProtocol?
    
    init(view: ViewControllerProtocol) {
        self.view = view
    }
    
    public func presentResult(result: String, image: String, imc: Double){
        view?.displayResult(result: result, image: image, imc: imc)
    }
    
    func presentEmptyFieldPopUp() {
        view?.displayAlert(title: "Atenção", message: "Os campos peso e altura precisam estar preenchidos", textButton: "Entendi")
    }
    
    func presentNotPossibleCalc() {
        view?.displayAlert(title: "Ops!", message: "Não foi possivel calcular seu IMC , verifique se os dados de peso e altura estão corretos", textButton: "Ok")
    }
}
