//
//  RootViewController.swift
//  _Swift
//
//  Created by Ivan on 14-6-4.
//  Copyright (c) 2014年 Ivan. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }
 
    
    var tableView:UITableView?
    var numbers=Int[]()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title="TableView"
        self.tableView = UITableView(frame: self.view.frame, style:UITableViewStyle.Plain)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view?.addSubview(self.tableView)

        number()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return numbers.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.textLabel.text = "Cell:\(numbers[indexPath.row])"
        
        return cell
    }
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    func number() {
        for i in 1...15{
            numbers.append(i)
            println("number:\(numbers[i-1])")
        }
    }
}
