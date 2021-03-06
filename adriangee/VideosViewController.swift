//
//  VideosViewController.swift
//  adriangee
//
//  Created by Hector Otero on 5/9/16.
//  Copyright © 2016 Larsen & McDermott Enterprises, LLC. All rights reserved.
//

import UIKit

class VideosViewController: UITableViewController {
    var videoStore: VideoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Get the height of the status bar
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
        //set the height of the table view cells
        tableView.rowHeight = 65
        
        navigationController!.navigationBar.barTintColor = UIColor(red: 0, green: 0.4784, blue: 0.8, alpha: 1.0)
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoStore.allVideos.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //create an instance of UITableViewCell, with default appearance
        //let cell = UITableViewCell(style: .Value1, reuseIdentifier: "UITableViewCell")
        
        //set the text on the cell
        //let video = videoStore.allVideos[indexPath.row]
        
        //cell.textLabel?.text = video.title
        //cell.detailTextLabel?.text = "$\(video.video_description)"
        
        //return cell
        
        let cell = tableView.dequeueReusableCellWithIdentifier("VideoCell", forIndexPath: indexPath) as! VideoCell
        
        let video = videoStore.allVideos[indexPath.row]
        
        cell.nameLabel.text = video.title
        cell.serialNumberLabel.text = video.description
        cell.valueLabel.text = "$\(video.url_string)"
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //If the triggered segue is the "ShowVideo" segue
        if segue.identifier == "ShowVideo" {
            //Figure out which row was just tapped
            if let row = tableView.indexPathForSelectedRow?.row {
                //Get the item associated with this row and pass it along
                let video = videoStore.allVideos[row]
                let detailViewController = segue.destinationViewController as! DetailViewController
                detailViewController.video = video
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}




