//
//  MCClipsViewModel.swift
//  MovieClips
//
//  Created by Chen Hao on 9/22/18.
//  Copyright © 2018 STPDChen. All rights reserved.
//

import UIKit
import AVFoundation

public protocol MCClipsViewModelDelegate:class {
    func updateImageItem(at index: Int)
    func updateVideoItem(at index: Int)
}

public class MCClipsViewModel: NSObject {
    
    public weak var delegate: MCClipsViewModelDelegate?
    
    private var clips: [MCClipModel]
    
    public init(with clips: [MCClipModel]) {
        self.clips = clips
        super.init()
    }
    
    public var count: Int {
        return clips.count
    }
    
    public func video(at index: Int) -> AVPlayerItem? {
        if index < clips.count {
            return clips[index].video
        } else {
            return nil
        }
    }
    
    public func image(at index: Int) -> UIImage? {
        if index < clips.count {
            return clips[index].image
        } else {
            return nil
        }
    }
    
    public func updateImageItem(item: UIImage, at index: Int) {
        guard index < clips.count else { return }
        clips[index].image = item
        delegate?.updateImageItem(at: index)
    }
    
    public func updateVideoItem(item: AVPlayerItem, at index: Int) {
        guard index < clips.count else { return }
        clips[index].video = item
        delegate?.updateVideoItem(at: index)
    }
}
