//
//  StartPageVideoView.swift
//  templateRenderingProject
//
//  Created by Aydar on 10.08.2020.
//  Copyright © 2020 Aydar. All rights reserved.
//

import UIKit
import AVFoundation

class VideoView: UIView {
    private var playerLayer = AVPlayerLayer()
    private var playerLooper = NSObject()
    private var fileURL:URL?
    
    
    override func awakeFromNib() {
        layer.masksToBounds = true
        layer.cornerRadius = 25.0
    }
    
    func setProperties(videoName:String, videoExtension:String){
        fileURL = Bundle.main.url(forResource: videoName, withExtension: videoExtension)
    }
    
    func setURLProperties(videoURL: URL){
        fileURL = videoURL
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // Setup player
        
        let playerItem = AVPlayerItem(url: fileURL!)
        let queuePlayer = AVQueuePlayer(playerItem: playerItem)
        playerLayer.player = queuePlayer
        playerLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        self.layer.addSublayer(self.playerLayer)
        playerLayer.videoGravity = .resizeAspectFill
        
        //loop video
        playerLooper = AVPlayerLooper(player: queuePlayer, templateItem: playerItem)
        continuePlaying()
    }
    
    func stopPlaying(){
        playerLayer.player?.pause()
    }
    
    func continuePlaying(){
        playerLayer.player?.play()
    }
    
    

}
