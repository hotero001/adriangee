//
//  Video.swift
//  adriangee
//
//  Created by Hector Otero on 5/9/16.
//  Copyright © 2016 Larsen & McDermott Enterprises, LLC. All rights reserved.
//

import Foundation
import UIKit

class Video: NSObject {
    //declaring all the properties that a video should have.
    var title: String
    var video_description: String
    var date: String
    var url_string: String
    var image: String
    
    //designated initializer ie: sets initial values for all of the properties
    init(title:String, video_description: String, date: String, url_string:String, image: String){
        self.title = title
        self.video_description = video_description
        self.date = date
        self.url_string = url_string
        self.image = image
        
        //do i need this line below?
        //super.init()
    }
    
    //convenience initializer that creates a randomly generated item
    convenience init(random: Bool=false){
        if random {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            //let randomValue = Int(arc4random_uniform(100))
            //let randomSerialNumber = NSUUID().UUIDString.componentsSeparatedByString("-").first!
            
            self.init(title: randomName, video_description: randomName, date: randomName, url_string: randomName, image: randomName)
        }
        else{
            self.init(title: "", video_description: "", date: "", url_string: "", image: "")
        }
    }
}
