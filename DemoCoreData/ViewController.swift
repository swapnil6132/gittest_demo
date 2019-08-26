//
//  ViewController.swift
//  DemoCoreData
//
//  Created by Dhruv Patel on 25/07/19.
//  Copyright © 2019 Dhruv Patel. All rights reserved.
//

import UIKit
import SSPlaceHolderTableView

class ViewController: UIViewController {
    
    @IBOutlet var tblViewExpenseList: TableView!
    
    var menuOptions : [String] = ["Option1", "Optino2", "Option3", "Optino17", "Option18"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let btnMenu = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(self.clickmenu))
        self.navigationItem.leftBarButtonItem = btnMenu
        
        let btnRightMenu = UIBarButtonItem(image: UIImage(named: "profile")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(self.clickRightMenu))
        self.navigationItem.rightBarButtonItem = btnRightMenu
        
//        self.tblViewExpenseList.setState(.noDataAvailable(noDataImg: nil, noDataLabelTitle: nil))
        
        tblViewExpenseList.delegate = self
        tblViewExpenseList.dataSource = self
        tblViewExpenseList.reloadData()
    }

    @objc func clickmenu(){
        sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }
    
    @objc func clickRightMenu(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let que = storyboard.instantiateViewController(withIdentifier: "ProfileVC") as? ProfileVC
        self.navigationController?.pushViewController(que ?? UIViewController(), animated: true)
    }
    
    @IBAction func btnAddExpenseTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let que = storyboard.instantiateViewController(withIdentifier: "AddExpenseDetailsVC") as? AddExpenseDetailsVC
        self.navigationController?.pushViewController(que ?? UIViewController(), animated: true)
    }
    

}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cellIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MenuCell
        if cell == nil {
            var nib = Bundle.main.loadNibNamed("MenuCell", owner: self, options: nil)
            cell = nib?[0] as? MenuCell
        }
        cell?.layer.shouldRasterize = true
        cell?.layer.rasterizationScale = UIScreen.main.scale
        cell?.selectionStyle = .none
        
        cell?.backgroundColor = UIColor.clear
        
        cell?.lblName.text = menuOptions[indexPath.row]
        cell?.lblName.textColor = UIColor.orange
        cell?.imgMenu.tintColor = UIColor.orange
        //        cell?.imgMenu.image = UIImage(named: (MenuImageArray[indexPath.row] as? String)!)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let cellIdentifier = "cellIdentifier"
//
//        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? SideMenuHeaderCell
//        if cell == nil {
//            var nib = Bundle.main.loadNibNamed("SideMenuHeaderCell", owner: self, options: nil)
//            cell = nib?[0] as? SideMenuHeaderCell
//        }
//        cell?.layer.shouldRasterize = true
//        cell?.layer.rasterizationScale = UIScreen.main.scale
//        cell?.selectionStyle = .none
//
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//
//        return 100
//    }
}


