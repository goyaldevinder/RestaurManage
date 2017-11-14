//
//  Promo_ViewController.swift
//  RestaurManage
//
//  Created by Devinder Goyal on 2017-11-12.
//  Copyright © 2017 Devinder Goyal. All rights reserved.
//

import UIKit

class Promo_ViewController: UIViewController , UITableViewDataSource {
    
    var promo_name : [String] = ["WELCOM50", "FREE10", "FIRSTUSER", "WINNER", "TORONTO"]
    var promo_cat : [String] = ["SILVER", "GOLD", "ELITE", "DIAMOND", "TOP"]
    var promo_expiry : [String] = ["2017-11-12","2018-11-12","2019-10-10","2020-02-20","2018-01-01"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return promo_name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell4 = tableView.dequeueReusableCell(withIdentifier: "cell4") as! Promo_TableViewCell
        
        cell4.txtpromo.text = promo_name [indexPath.row]
        cell4.txtuser_category.text = promo_cat[indexPath.row]
        cell4.txtexpirydate.text = promo_expiry [indexPath.row]

        return cell4
    }
    

    @IBOutlet weak var promotable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        promotable.delegate = self as? UITableViewDelegate
        promotable.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
