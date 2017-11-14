//
//  CustomerViewController.swift
//  RestaurManage
//
//  Created by Devinder Goyal on 2017-11-12.
//  Copyright © 2017 Devinder Goyal. All rights reserved.
//

import UIKit

class CustomerViewController: UIViewController ,UITableViewDataSource{
    
    

    var customers_name : [String] = ["Gal Gadot", "Scarlett Johnsson", "Johhny Deepp" , "Robert Simpons", "Channing Gill"]
    var customers_category : [String] = ["SILVER", "GOLD", "ELITE", "DIAMOND", "TOP"]
    var customers_totalorders : [String] = ["29", "69", "109", "209", "509"]

    @IBOutlet weak var cust_table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cust_table.delegate = self as? UITableViewDelegate
        cust_table.dataSource = self as UITableViewDataSource
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers_name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2") as! CustomerTableViewCell
        
        cell2.txtcustname.text = customers_name[indexPath.row]
        cell2.txtorders.text=customers_totalorders[indexPath.row]
        cell2.cust_category.text=customers_category[indexPath.row]

        return cell2
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
