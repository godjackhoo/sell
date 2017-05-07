//
//  DanhSach_TableViewController.swift
//  ShoppingJack
//
//  Created by ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽ on 5/4/17.
//  Copyright © 2017 ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽. All rights reserved.
//

import UIKit

class PhuKien_TableViewController: UITableViewController {
    
    var arrnamePK:Array = ["Ốp lưng Huawei Y6", "Cliptec Meteor RGS502", " Kanen IP-350", "eSaver 10.000 mAh Y105", "Gậy chụp ảnh Mini 2", "Loa Bluetooth MB-M615"]
    
    var arrimagePK:Array = ["a.jpg", "b.jpg" ,"c.jpg" ,"d.jpg", "e.jpg", "f.jpg"]
    
    var arrpricePK:Array = ["70.000₫", "140.000₫", "105.000₫", "210.000₫", "30.000₫", "210.000₫"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrnamePK.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellPK", for: indexPath)
        
        let imagePK:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imagePK.image = UIImage(named: arrimagePK[indexPath.row])
        cell.addSubview(imagePK)
        
        let namePK:UILabel = UILabel(frame: CGRect(x: 120, y: 0, width: 200, height: 20))
        namePK.text = arrnamePK[indexPath.row]
        cell.addSubview(namePK)
        
        let pricePK:UILabel = UILabel(frame: CGRect(x: 200, y: 20, width: 200, height: 100))
        pricePK.text = arrpricePK[indexPath.row]
        cell.addSubview(pricePK)
        
        cell.isEditing = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            arrpricePK.remove(at: indexPath.row)
            arrnamePK.remove(at: indexPath.row)
            arrimagePK.remove(at: indexPath.row)
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
