//
//  TemplatesPageCollectionViewCell.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//

import UIKit

class TemplatesPageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var TemplatePreview: UIView!
    private var TemplateInfo: TemplateModel?
    
    func InitializeView(initModel: TemplateModel){
        self.TemplateInfo = initModel
    }
}
