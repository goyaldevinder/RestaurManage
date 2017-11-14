//
//  totalordersViewController.swift
//  RestaurManage
//
//  Created by Devinder Goyal on 2017-11-12.
//  Copyright © 2017 Devinder Goyal. All rights reserved.
//

import UIKit

class totalordersViewController: UIViewController , UITableViewDataSource{
    
    
    
    var locations : [String] = ["Tim Brampton", "Tim Mississauga", "Tim Markham", "Tim Ajax", "Tim Scarborough"]
    var profit : [Double] = [75650.00 , 986530.0, 25693.02, 26983.0, 986532.0]
    var totalorders_number : [Int] = [126580, 68000, 60500, 150930, 100620]
    
    
    @IBOutlet weak var tableorders: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableorders.delegate = self as? UITableViewDelegate
        tableorders.dataSource = self
        
        //tableorders.estimatedRowHeight = 50
        //tableorders.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let  cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! tablecell_ordersTableViewCell
        
        cell.txtlocation.text = locations[indexPath.row]
        cell.txtxprofit.text = String (profit[indexPath.row] )
        cell.txttotalorders.text = String (totalorders_number[indexPath.row] )

        print(locations[indexPath.row])
        
        return cell 
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
