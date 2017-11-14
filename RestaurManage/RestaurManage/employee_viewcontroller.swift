//
//  employee_viewcontroller.swift
//  RestaurManage
//
//  Created by Devinder Goyal on 2017-11-12.
//  Copyright © 2017 Devinder Goyal. All rights reserved.
//

import UIKit

class employee_viewcontroller: UIViewController , UITableViewDataSource{
   
    

    
    var emp_name : [String] = ["Dalwinder", "Rohit", "Aman", "Diljit", "Himmat"]
    var Designation : [String] = ["Site Manager", "Location Server", "Baker", "Site Operator", "Cleaning Boy"]
    var Location : [String] = ["Tim Brampton", "Tim Mississauga", "Tim Markham", "Tim Ajax", "Tim Scarborough"]
    
    @IBOutlet weak var employetable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        employetable.delegate = self as? UITableViewDelegate
        
        employetable.dataSource = self
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emp_name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3") as! employee_TableViewCell
        
        cell3.txt_empname.text = emp_name[indexPath.row]
cell3.txtlocation.text = Location[indexPath.row]

        cell3.txtdesignation.text = Designation[indexPath.row]
        
        return cell3
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
