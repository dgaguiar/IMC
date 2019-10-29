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
    func presentResult(result: String, image: String)
}

class Presenter: PresenterProtocol{
    
    var view: ViewControllerProtocol?
    
    public func presentResult(result: String, image: String){
        view?.displayResult(result: result, image: image)
    }
}
