//
//  CartViewController.swift
//  SimpleScoreSwift
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

     let storage = AppStorage()
    
    @IBOutlet weak var labelMoney: UILabel!
    @IBOutlet weak var buttonBack: UIButton!
    @IBOutlet weak var buttonBuyItHere: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMoney.text = String(storage.fetchAllMoney()!)
    }
 
    @IBAction func backBtnPressed(_ sender: Any) {
    }

    @IBAction func buyItHere(_ sender: Any) {
     
    }
}
