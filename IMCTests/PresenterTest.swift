//
//  PresenterTest.swift
//  IMCTests
//
//  Created by daianne.gomes.aguiar on 30/10/19.
//  Copyright © 2019 daianne.gomes.aguiar. All rights reserved.
//

import Foundation
import XCTest
@testable import IMC

class PresenterTest: XCTestCase {
    
    var viewMock: ViewControllerMock!
    var presenter: Presenter!
    
    override func setUp() {
        viewMock = ViewControllerMock()
        
        presenter.view = viewMock
    }
    
}
