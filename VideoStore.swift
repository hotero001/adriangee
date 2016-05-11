//
//  VideoStore.swift
//  adriangee
//
//  Created by Hector Otero on 5/9/16.
//  Copyright © 2016 Larsen & McDermott Enterprises, LLC. All rights reserved.
//

import UIKit

class VideoStore {
    
    var allVideos = [Video]()

    func createVideo() -> Video {
        let newVideo = Video(random: true)
        allVideos.append(newVideo)
        return newVideo
    }
    
    init() {
        for _ in 0..<5 {
            createVideo()
        }
    }
}