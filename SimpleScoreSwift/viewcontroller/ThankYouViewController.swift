//
//  ThankYouViewController.swift
//  SimpleScoreSwift
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

import UIKit

class ThankYouViewController: UIViewController {

    
    let storage = AppStorage()
    
    @IBOutlet weak var labelMoney: UILabel!
    
    @IBOutlet weak var buttinBack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         labelMoney.text = String(storage.fetchAllMoney()!)
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
        storage.save(allMoney: 0)
        labelMoney.text = String(storage.fetchAllMoney()!)
    }
}
