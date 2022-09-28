//
//  ViewController.swift
//  dumpEx
//
//  Created by admin1 on 14.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainTable: UITableViewCell!
    
    @IBOutlet weak var brakeTimeLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var stackViewMoney: UIStackView!
    @IBOutlet weak var stackViewTest: UIStackView!
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBOutlet weak var buttonSettings: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackViewMoney.layer.cornerRadius = 10
        stackViewMoney.backgroundColor = .gray
        
        stackViewTest.layer.cornerRadius = 10
        stackViewTest.backgroundColor = .gray
        
        buttonSettings.backgroundColor = .gray
        buttonSettings.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func openSettingsView(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SettingsViewController", bundle:  nil)
        guard  let settingsVC = storyboard.instantiateViewController(withIdentifier: "SettingsViewController") as? SettingsViewController else { return}
         present(settingsVC, animated: true, completion: nil)
    }


}


