//
//  ViewController.swift
//  NewsFeed
//
//  Created by Muneef M on 21/05/17.
//  Copyright © 2017 Dr ashy. All rights reserved.
//

import UIKit
import Foundation
import Firebase
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableLabel: UILabel!
    @IBOutlet var FeedTable: UITableView!
    var ref: FIRDatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("------------  ViewController viewDidLoad -----------")
        //FeedTable.delegate = self as UITableViewDelegate
        // Do any additional setup after loading the view, typically from a nib.
        ref = FIRDatabase.database().reference()
        
        
        ref.child("NewsFeeds").child("Feeds").observeSingleEvent(of: .value, with: { (snapshot) in
            // Get  value
            let value = snapshot.value as? NSDictionary
            print("value recieved  =  --------------------------------")
            print(value)
            self.tableLabel.text = value?.value(forKey: "test") as! String
           
            //self.tableLabel.text = item?.value(forKey: "title" ) as! String
            

        //    tableLabel.self.text = value.
            //let username = value?["username"] as? String ?? ""
            
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("----  viewController section function ------- ")

        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedCell", for: indexPath)
        print("----  viewController cell function ------- ")
        return cell
    }

}

