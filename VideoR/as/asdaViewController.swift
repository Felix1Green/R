//
//  asdaViewController.swift
//  VideoR
//
//  Created by Aydar on 23.01.2021.
//  
//

import UIKit

class asdaViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterasdaProtocol?
    
}

extension asdaViewController: PresenterToViewasdaProtocol{
    // TODO: Implement View Output Methods
}
