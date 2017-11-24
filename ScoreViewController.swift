//
//  ViewController.swift
//  SimpleScoreSwift
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    let storage = AppStorage()

    @IBOutlet weak var buttonIphone: UIButton!
    @IBOutlet weak var buttonMouse: UIButton!
    @IBOutlet weak var buttonPS4: UIButton!
    @IBOutlet weak var buttonCamera: UIButton!
    @IBOutlet weak var buttonKeyboard: UIButton!
    @IBOutlet weak var buttonNotebook: UIButton!
    @IBOutlet weak var buttonAddToCart: UIButton!
    @IBOutlet weak var buttonBuyNow: UIButton!
    
    @IBOutlet weak var labelScore: UILabel!
    
    let moneyIphone = 60000;
    let moneyMouse = 300;
    let moneyPS4 = 25000;
    let moneyCamera = 30000;
    let moneyKeyboard = 2000;
    let moneyNotebook = 40000;
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        if(!storage.isAllMoneyExist()){
            storage.save(allMoney: 0)
        }
        if(storage.fetchAllMoney()==0){
            buttonAddToCart.isEnabled = false
            buttonBuyNow.isEnabled = false
        }

        
        labelScore.text = String(storage.fetchAllMoney()!)
        
      
    }
    
    @IBAction func iphoneBtnPressed(_ sender: Any) {
            addProduct(moneyIphone)
    }
    
    @IBAction func mouseBtnPressed(_ sender: Any) {
        addProduct(moneyMouse)
    }
    
    @IBAction func ps4BtnPressed(_ sender: Any) {
        addProduct(moneyPS4)
    }
    
    @IBAction func cameraBtnPressed(_ sender: Any) {
        addProduct(moneyCamera)
    }
    
    @IBAction func keyboardBtnPressed(_ sender: Any) {
        addProduct(moneyKeyboard)
    }
    
    @IBAction func notebookBtnPressed(_ sender: Any) {
        addProduct(moneyNotebook)
    }
    
    @IBAction func addToCartBtnPressed(_ sender: Any){
        
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {

    }
    
    func addProduct(_ money:Int) {
        let moneyStorage = storage.fetchAllMoney()!
        
        storage.save(allMoney: moneyStorage + money)
      
        labelScore.text = String(storage.fetchAllMoney()!)
        buttonAddToCart.isEnabled = true
        buttonBuyNow.isEnabled = true
    }
    
}

