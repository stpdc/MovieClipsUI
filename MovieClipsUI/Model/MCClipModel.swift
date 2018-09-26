//
//  MCClip.swift
//  MovieClips
//
//  Created by Chen Hao on 9/22/18.
//  Copyright © 2018 STPDChen. All rights reserved.
//

import UIKit
import AVFoundation

public class MCClipModel: NSObject {

    public var id: Int
    public var imageUrl: URL
    public var videoUrl: URL
    
    public init(id: Int, imageUrl: URL, videoUrl: URL) {
        self.id = id
        self.imageUrl = imageUrl
        self.videoUrl = videoUrl
    }
    
    public var image: UIImage?
    
    public var video: AVPlayerItem?
    
}
