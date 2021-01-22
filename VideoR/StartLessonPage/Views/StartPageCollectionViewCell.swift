//
//  StartPageCollectionViewCell.swift
//  templateRenderingProject
//
//  Created by Aydar on 11.08.2020.
//  Copyright © 2020 Aydar. All rights reserved.
//

import UIKit

class StartPageCollectionCellView: UICollectionViewCell {
    
    @IBOutlet weak var videoView:StartPageVideoView!
    @IBOutlet weak var videoLbl:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCellView(videoName:String, videoExtension:String, text: String){
        self.videoView.setProperties(videoName: videoName, videoExtension: videoExtension)
        videoLbl.text = text
    }
}
