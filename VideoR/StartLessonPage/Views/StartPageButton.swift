//
//  StartPageButton.swift
//  templateRenderingProject
//
//  Created by Aydar on 11.08.2020.
//  Copyright © 2020 Aydar. All rights reserved.
//

import UIKit

@IBDesignable
class StartPageButton: UIButton {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.cornerRadius = 15.0
        titleLabel!.textAlignment = .center
        titleLabel!.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

}
