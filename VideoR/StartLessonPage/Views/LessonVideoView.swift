//
//  LessonVideoView.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//

import UIKit
import AVFoundation

class LessonVideoView: UIView {
    private var player: AVPlayer?
    private var playerLayer: AVPlayerLayer?
}

extension LessonVideoView {
    func InitPlayerWithURL(url: URL){
        playerLayer = AVPlayerLayer()
        playerLayer!.videoGravity = .resizeAspectFill
        playerLayer!.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2126765839)
        player = AVPlayer(playerItem: AVPlayerItem(asset: AVAsset(url: url)))
        playerLayer!.player = player
        
        self.layer.addSublayer(playerLayer!)
        playerLayer?.masksToBounds = true
        playerLayer?.cornerRadius = 15.0
        loopVideo(player: player!)
    }
    
    func StartPlaying(){
        guard player != nil else{
            fatalError("No initializing player")
        }
        
        player!.play()
    }
    
    func StopPlaying(){
        guard player != nil else{
            fatalError("No initializing player")
        }
        
        player!.pause()
    }
    
    func loopVideo(player:AVPlayer){
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: nil, queue: nil){notification in
            player.seek(to: .zero)
            player.play()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.playerLayer?.frame = self.bounds
    }
}
