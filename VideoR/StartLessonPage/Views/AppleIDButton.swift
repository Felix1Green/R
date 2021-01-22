//
//  AppleIDButton.swift
//  templateRenderingProject
//
//  Created by Aydar on 11.08.2020.
//  Copyright © 2020 Aydar. All rights reserved.
//

import UIKit


@IBDesignable
class AppleIDButton: UIButton {

    override func prepareForInterfaceBuilder() {
        updateView()
    }
    
    override func awakeFromNib() {
        updateView()
    }
    
    func updateView(){
        layer.masksToBounds = true
        layer.cornerRadius = 10.0
        //layer.borderWidth = 1
        //layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
