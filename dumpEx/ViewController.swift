//
//  ViewController.swift
//  dumpEx
//
//  Created by admin1 on 14.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    let firstView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.frame = CGRect(x: 10, y: 10, width: 50, height: 100)
        firstView.backgroundColor = .systemGreen
        
        self.view.addSubview(firstView)
        
    }


}


extension ViewController {
    
    
    
    
}

