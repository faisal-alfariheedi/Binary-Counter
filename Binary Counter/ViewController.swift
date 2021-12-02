//
//  ViewController.swift
//  Binary Counter
//
//  Created by faisal on 27/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var total: UILabel!
    var totalnum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource=self
        total.text="total: \(totalnum)"
        // Do any additional setup after loading the view.
    }


    
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! bcell
        cell.celdel=self
        cell.label.text = String(describing: pow(10,indexPath.row))
        
        return cell
    }
    
}

extension ViewController:celldelegate{
    func valuechange(val: Int) {
        totalnum = val+totalnum
        total.text="total: \(totalnum)"
    }
}
