//
//  listPhoneViewController.swift
//  ShoppingJack
//
//  Created by ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽ on 5/4/17.
//  Copyright © 2017 ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽. All rights reserved.
//

import UIKit

class listPhoneViewController: UIViewController {

    var nameSP:[String]!
    var imageSP:[String]!
    var priceSP:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameSP = ["iPhone 7 Plus 256 Gb", "SamSung Galaxy S8", "SamSung Galaxy S7 Edge", "HTC U Ultra", "Sony Xperia Z"]
        imageSP = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"]
        priceSP = ["25.990.000", "18.490.000", "15.490.000", "14.990.000", "12.990.000"]
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
}

extension listPhoneViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return 0
    }
    
}
