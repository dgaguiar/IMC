//
//  ViewController.swift
//  IMC
//
//  Created by daianne.gomes.aguiar on 01/07/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol {
    func displayResult(result: String, image: String, imc: Double)
}

class ViewController: UIViewController, ViewControllerProtocol {

    //MARK:  Outlets
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultView: UIView!
    
    var interactor: InteractorProtocol?
    
    // MARK: Constructors
    
    init(interactor: InteractorProtocol){
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        self.hideKeyboardWhenTappedAround()
    }
    
    // NOTE: Method who init 'presenter' with 'view' and ínteractor'
    
    func setupUI() {
        let presenter = Presenter(view: self)
        interactor = Interactor(presenter: presenter)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        if let weight = weightTextField.text, let height = heightTextField.text {
           interactor?.convertToDouble(weight: weight, height: height)
        }
    }

    // MARK: Protocol
    
    func displayResult(result: String, image: String, imc: Double){
        resultLabel.text = "\(Int(imc)) : \(result)"
        resultImage.image = UIImage(named: image)
        resultView.isHidden = false
    }
}

// NOTE: Extension to dismiss keyboard when the user touch the screen outside the keyboard

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:    #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
