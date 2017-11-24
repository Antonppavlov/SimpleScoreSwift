//
//  AppStorage.swift
//  SimpleScoreSwift
//
//  Created by Anton Pavlov on 23.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

import Foundation

class AppStorage {
    static let allMoneyKey = "allMoney"
    
    
    func fetchAllMoney() -> Int? {
        let allMoney = UserDefaults.standard.integer(forKey: AppStorage.allMoneyKey)
        return allMoney
    }
    
    func save(allMoney: Int) {
        UserDefaults.standard.set(allMoney, forKey: AppStorage.allMoneyKey)
    }
    
    func isAllMoneyExist() -> Bool {
       let allMoney = self.fetchAllMoney()
        return allMoney != nil
    }
    
}
