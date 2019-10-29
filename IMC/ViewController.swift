//
//  ViewController.swift
//  IMC
//
//  Created by daianne.gomes.aguiar on 01/07/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol {
    var interactor: InteractorProtocol? { get set }
    
    func displayResult(result: String, image: String)
}

class ViewController: UIViewController, ViewControllerProtocol {

    //MARK:  Outlets
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultView: UIView!
    
    var imc = 0.0
    var interactor: InteractorProtocol?
    
    
    @IBAction func calculate(_ sender: UIButton) {
        interactor?.convertToDouble(weight: weightTextField.text!, height: heightTextField.text!)
    }
    
//    func showResult(){
//        var result = ""
//        var image = ""
//        switch imc {
//        case 0..<16 :
//            result = "Magreza"
//            image = "abaixo"
//        case 16..<18.5:
//            result = "Abaixo do peso"
//            image = "ideal"
//        case 18.5..<25:
//            result = "Peso Ideal"
//            image = "ideal"
//        case 25..<30:
//            result = "Sobrepeso"
//            image = "sobre"
//        default:
//            result = "Obesidade"
//            image = "obesidade"
//        }
//        resultLabel.text = "\(Int(imc)) : \(result)"
//        resultImage.image = UIImage(named: image)
//        resultView.isHidden = false
//    }
//
    
    func displayResult(result: String, image: String){
        interactor?.calculateResult()
        resultLabel.text = "\(Int(imc)) : \(result)"
        resultImage.image = UIImage(named: image)
        resultView.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

