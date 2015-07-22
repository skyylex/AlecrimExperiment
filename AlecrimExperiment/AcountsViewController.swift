//
//  AcountsViewController.swift
//  AlecrimExperiment
//
//  Created by Yury Lapitsky on 7/20/15.
//  Copyright (c) 2015 skyylex. All rights reserved.
//

import UIKit



class AcountsViewController: UITableViewController {
    @IBOutlet var table : UITableView!
    
    let AccountCellIdentifier = "AccountCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = dataContext.people.count()
        return count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(AccountCellIdentifier) as! UITableViewCell
        
        var accountsCount = 0
        for _ in dataContext.people {
            accountsCount++
        }
        
        let accountFirst = dataContext.people.first() /// nil
        let accounts = dataContext.people.toArray()   /// 0
        let peopleAlive = dataContext.people.any()    /// true
        if accounts.count > 0 {
            cell.textLabel!.text = accounts[indexPath.row].name
        }
        
        return cell
    }
    
    @IBAction func addNewAccount() {
        var accountEntity = dataContext.people.createEntity()
        accountEntity.name = "RandomName"
        accountEntity.nickname = "Random"
        accountEntity.age = 19
        dataContext.save()
        
        tableView.reloadData()
    }
}

