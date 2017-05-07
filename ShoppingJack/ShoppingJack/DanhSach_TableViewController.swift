//
//  DanhSach_TableViewController.swift
//  ShoppingJack
//
//  Created by ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽ on 5/4/17.
//  Copyright © 2017 ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽. All rights reserved.
//

import UIKit

class DanhSach_TableViewController: UITableViewController {
    
    var arrNameSP:Array = ["iPhone 7 Plus 256 Gb", "SamSung Galaxy S8", "SamSung Galaxy S7 Edge", "HTC U Ultra", "Sony Xperia Z"]
    var arrImageSP:Array = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"]
    var arrPriceSP:Array = ["25.990.000₫", "18.490.000₫", "15.490.000₫", "14.990.000₫", "12.990.000₫"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNameSP.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let imageSP:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //cell.textLabel?.text = arrNameSP[indexPath.row]
        imageSP.image = UIImage(named: arrImageSP[indexPath.row])
        print(imageSP)
        
        let nameSP:UILabel = UILabel(frame: CGRect(x: 120, y: 0, width: 200, height: 20))
        nameSP.text = arrNameSP[indexPath.row]
        print(nameSP)
        
        let priceSP:UILabel = UILabel(frame: CGRect(x: 200, y: 20, width: 200, height: 100))
        priceSP.text = arrPriceSP[indexPath.row]
        print(priceSP)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            arrPriceSP.remove(at: indexPath.row)
            arrNameSP.remove(at: indexPath.row)
            arrImageSP.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            print("Ban vua delete 1 row")
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
