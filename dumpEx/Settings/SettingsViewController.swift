//
//  SettingsViewController.swift
//  dumpEx
//
//  Created by admin1 on 19.09.22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var dataButton: UIButton!
    @IBOutlet weak var dataLable: UILabel!
    @IBOutlet weak var mouthField: UITextField!
    @IBOutlet weak var expensesField: UITextField!
    @IBOutlet weak var currencyField: UITextField!
    
    @IBOutlet weak var buttonDone: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func saveSettings(_ sender: Any) {
    }
    
    @IBAction func setData(_ sender: Any) {
    }
}
