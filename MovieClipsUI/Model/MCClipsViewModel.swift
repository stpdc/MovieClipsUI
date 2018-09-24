//
//  MCClipsViewModel.swift
//  MovieClips
//
//  Created by Chen Hao on 9/22/18.
//  Copyright © 2018 STPDChen. All rights reserved.
//

import UIKit

public class MCClipsViewModel: NSObject {
    
    private var clips: [MCClipModel]
    
    public init(with clips: [MCClipModel]) {
        self.clips = clips
        super.init()
    }
    
    public var count: Int {
        return clips.count
    }
    
    public func videoUrl(at index: Int) -> URL? {
        if index < clips.count {
            return clips[index].videoUrl
        } else {
            return nil
        }
    }
    
    public func imageUrl(at index: Int) -> URL? {
        if index < clips.count {
            return clips[index].imageUrl
        } else {
            return nil
        }
    }
}
