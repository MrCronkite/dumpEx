//
//  ViewController.swift
//  dumpEx
//
//  Created by admin1 on 14.09.22.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc func showView(){
      let storyboard = UIStoryboard(name: "SettingsViewController", bundle:  nil)
      guard  let settingsVC = storyboard.instantiateViewController(withIdentifier: "SettingsViewController") as? SettingsViewController else { return}
       present(settingsVC, animated: true, completion: nil)
        
        
    }


}


