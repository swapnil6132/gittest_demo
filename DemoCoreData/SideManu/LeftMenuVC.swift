//
//  LeftMenuVC.swift
//  DemoCoreData
//
//  Created by Dhruv Patel on 25/07/19.
//  Copyright © 2019 Dhruv Patel. All rights reserved.
//

import UIKit
import ViewAnimator

class LeftMenuVC: UIViewController {
    
    @IBOutlet var tblViewSideMenu: UITableView!
    
    var menuOptions : [String] = ["Option1", "Optino2", "Option3", "Optino4", "Option5"]
    
    private let animations = [AnimationType.from(direction: .bottom, offset: 30.0)]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tblViewSideMenu.delegate = self
        self.tblViewSideMenu.dataSource = self
        self.tblViewSideMenu.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension LeftMenuVC : UITableViewDataSource, UITableViewDelegate {
    
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
//        cell?.imgMenu.image = UIImage(named: (MenuImageArray[indexPath.row] as? String)!)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cells = tableView.visibleCells(in: indexPath.row)
//        UIView.animate(views: cells, animations: [rotateAnimation, fadeAnimation])
        UIView.animate(views: tableView.visibleCells, animations: animations, completion: {
            
        })
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cellIdentifier = "cellIdentifier"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? SideMenuHeaderCell
        if cell == nil {
            var nib = Bundle.main.loadNibNamed("SideMenuHeaderCell", owner: self, options: nil)
            cell = nib?[0] as? SideMenuHeaderCell
        }
        cell?.layer.shouldRasterize = true
        cell?.layer.rasterizationScale = UIScreen.main.scale
        cell?.selectionStyle = .none
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 100
    }
}
