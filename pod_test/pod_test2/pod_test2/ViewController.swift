//
//  ViewController.swift
//  BMCustomTableView
//
//  Created by Barbara M Brina on 10/22/2015.
//  Copyright (c) 2015 Barbara M Brina. All rights reserved.
//

import UIKit
import Foundation
import BMCustomTableView
//import RandomColorSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK: Variables
    var colors: [UIColor]!
    
    //MARK: Outlets
    @IBOutlet weak var customTableView: BMCustomTableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //colors = randomColors(count: 20, hue: .random, luminosity: .light)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return colors.count
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! CustomTableViewCell
        //cell.backgroundColor = colors[indexPath.row]
        cell.backgroundColor = UIColor.black
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        customTableView.customizeCell(cell: cell)
        
    }
        
}

