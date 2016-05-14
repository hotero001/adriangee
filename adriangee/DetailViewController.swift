//
//  DetailViewController.swift
//  adriangee
//
//  Created by Hector Otero on 5/11/16.
//  Copyright © 2016 Larsen & McDermott Enterprises, LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var serialNumberField: UITextField!
    @IBOutlet var valueField: UITextField!
    
    @IBOutlet var dateLabel: UILabel!
    
    var video: Video!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        nameField.text = video.title
        serialNumberField.text = video.video_description
        valueField.text = video.date
        dateLabel.text = video.url_string
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        //Save the changes to video
        video.title = nameField.text ?? ""
        video.video_description = serialNumberField.text!
        
    }
}
