//
//  AddExpenseDetailsVC.swift
//  DemoCoreData
//
//  Created by Dhruv Patel on 25/07/19.
//  Copyright © 2019 Dhruv Patel. All rights reserved.
//

import UIKit

class AddExpenseDetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.title = "Add"
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

extension AddExpenseDetailsVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension AddExpenseDetailsVC: MMTextFieldProtocol {
    func textLayoutChanged(text: MMTextField) {
        
    }
}
