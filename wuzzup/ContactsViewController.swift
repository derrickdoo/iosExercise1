//
//  ContactsViewController.swift
//  wuzzup
//
//  Created by Derrick Or on 1/28/15.
//  Copyright (c) 2015 derrickor. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let transportItems = ["Albert","Alex","Alfie","Bob","Chloe","Chrystal","Dylan","Ellie","Fonzie","Giovanni","Greg","Name","Name","Name","Name"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TransportCell") as UITableViewCell
        
        println(transportItems[indexPath.row])
        
        cell.textLabel.text = transportItems[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transportItems.count
    }
    
    @IBAction func clickBackBtn(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        
//        var cell = tableView.dequeueReusableCellWithIdentifier("TransportCell") as UITableViewCell
//        
//        cell.textLabel.text = transportItems[indexPath.row]
//        
//        //var imageName = UIImage(named: transportItems[indexPath.row])
//        //cell.imageView.image = imageName
//        
//        return cell
//    }
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        println("clicked table cell")
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
