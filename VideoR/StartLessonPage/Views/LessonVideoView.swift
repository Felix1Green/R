//
//  LessonVideoView.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//

import UIKit
import AVFoundation

class LessonVideoView: UIView {
    private var player: AVPlayer!
    private var playerLayer: AVPlayerLayer!
    
    
    init() {
        super.init(frame: CGRect.zero)
        self.initializePlayerLayer()
        self.autoresizesSubviews = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initializePlayerLayer()
    }
    
}

extension LessonVideoView {
    func initializePlayerLayer(){
        playerLayer = AVPlayerLayer()
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.backgroundColor = UIColor.white.cgColor
        
        self.layer.addSublayer(playerLayer)
        playerLayer.frame = self.bounds
    }
    
    func playVideoByURL(url: NSURL){
        player = AVPlayer(url: url as URL)
        
        playerLayer.player = player
        
        loopVideo(player: player)
    }
    
    func loopVideo(player:AVPlayer){
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: nil, queue: nil){notification in
            player.seek(to: .zero)
            player.play()
        }
    }
}
