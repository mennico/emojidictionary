//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Matt Ennico on 10/12/17.
//  Copyright © 2017 Matt Ennico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var dacoolTableView: UITableView!

    var emojis = ["😀","😁","😂","😖","😐","😡","🐀"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        dacoolTableView.dataSource = self
        dacoolTableView.delegate = self
    }

//tells how many rows to have in the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
//determines what cell to default to in the table view
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]  //label inside each cell
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegueWithIdentifier("moveSegue", sender: emoji)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destinationViewController as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

