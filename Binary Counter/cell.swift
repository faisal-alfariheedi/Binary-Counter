//
//  cell.swift
//  Binary Counter
//
//  Created by faisal on 27/04/1443 AH.
//

import UIKit

protocol celldelegate: class{
    func valuechange(val: Int)
}

class bcell: UITableViewCell {
    
    weak var celdel: celldelegate?
    @IBOutlet weak var label: UILabel!
    

    @IBAction func plus(_ sender: UIButton) {
        let v = Int(label.text!)!
        celdel?.valuechange(val: v)
    }
    @IBAction func minus(_ sender: UIButton) {
        let v = Int(label.text!)! * -1
        celdel?.valuechange(val: v)
    }
}
