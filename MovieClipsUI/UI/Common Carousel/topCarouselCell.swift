//
//  topCarouselCell.swift
//  MovieClips
//
//  Created by Chen Hao on 9/22/18.
//  Copyright © 2018 STPDChen. All rights reserved.
//

import UIKit
import AVFoundation

class topCarouselCell: UICollectionViewCell {
    
    private var videoUrl: URL?
    
    private var videoView = UIView()
    private var avPlayer: AVPlayer?
    private var avPlayerLayer: AVPlayerLayer?
    
    private var videoPlayerItem: AVPlayerItem? = nil {
        didSet {
            avPlayer?.replaceCurrentItem(with: self.videoPlayerItem)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        addConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .lightGray
        
        self.avPlayer = AVPlayer.init(playerItem: self.videoPlayerItem)
        avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        avPlayer?.actionAtItemEnd = .none
        
        addSubview(videoView)
        self.videoView.layer.insertSublayer(avPlayerLayer!, at: 0)
        
        NotificationCenter.default.addObserver(self, selector: #selector(didFinishPlaying), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: avPlayer?.currentItem)
        
        avPlayer?.play()
    }
    
    private func addConstraints() {
        videoView.translatesAutoresizingMaskIntoConstraints = false
        addConstraint(videoView.leftAnchor.constraint(equalTo: leftAnchor))
        addConstraint(videoView.rightAnchor.constraint(equalTo: rightAnchor))
        addConstraint(videoView.topAnchor.constraint(equalTo: topAnchor))
        addConstraint(videoView.bottomAnchor.constraint(equalTo: bottomAnchor))
    }
    
    @objc private func didFinishPlaying() {
        avPlayer?.seek(to: CMTime(seconds: 0, preferredTimescale: 1))
    }
    
    func config(videoUrl: URL) {
        
        self.videoUrl = videoUrl
        self.videoPlayerItem = AVPlayerItem(url: videoUrl)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updatePlayerLayer()
    }

    @objc private func updatePlayerLayer() {
        avPlayerLayer?.frame = videoView.bounds
    }
}
