//
//  TableViewController.swift
//  Nonmember Band App
//
//  Created by Zoe Sheill on 7/1/16.
//  Copyright © 2016 ClassroomM. All rights reserved.
//

import UIKit

extension String {
    public func indexOfCharacter(char: Character) -> Int? {
        if let idx = self.characters.indexOf(char) {
            return self.startIndex.distanceTo(idx)
        }
        return nil
    }
}


class TableViewController: UITableViewController {

    var eventList = [String]()
    
    var arrayEventList = [["Barbecue", "June 29th, 2016", "This is happening"], ["Gathering", "June 30th, 2016", "Doing stuff"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let string = "Hello.World"
        let needle: Character = "."
        if let idx = string.characters.indexOf(needle) {
            let pos = string.startIndex.distanceTo(idx)
            print("Found \(needle) at position \(pos)")
        }
        else {
            print("Not found")
        }
        
        //Setting item height
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 300
        
        let url = NSURL(string: "misbb.wordpress.com/calendar")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!)
        {
            (data, response, error) in
            
            if error == nil {
                let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
                
                let urlContentString = String(urlContent)
                //print(urlContent)
                print(urlContentString.componentsSeparatedByString("<p><span style=\"color:#0000ff;\""))
         
         
                
                dispatch_async(dispatch_get_main_queue(), {
                    
                })
                
                //self.calendarWebView.loadHTMLString(urlContent! as String, baseURL: nil)
            } else {
                print(error)
            }
        }
        
        task.resume()
        eventList.append("This will be a fun potluck on Rice Avenue")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayEventList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! tableViewCell
        
        cell.title.text = arrayEventList[indexPath.row][0]
        
        cell.date.text = arrayEventList[indexPath.row][1]
        
        cell.eventDescription.text = arrayEventList[indexPath.row][2]


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
