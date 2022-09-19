//
//  ViewController.swift
//  dumpEx
//
//  Created by admin1 on 14.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    let firstView = UIView()
    let buttonView = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.frame = CGRect(x: 10, y: 10, width: 50, height: 100)
        firstView.backgroundColor = .systemGreen
        
        
        buttonView.frame = CGRect(x: 100, y: 400, width: 100, height: 200)
        buttonView.setTitle("Settings", for: .normal)
        buttonView.setTitleColor(.blue, for: .normal)
        buttonView.layer.cornerRadius = 20
        buttonView.backgroundColor = .green
        buttonView.layer.borderColor = .init(red: 10, green: 10, blue: 10, alpha: 10)
        buttonView.addTarget(self, action: #selector(showView), for: .touchUpInside)
        
        self.view.addSubview(buttonView)
        self.view.addSubview(firstView)
        
    }
    
    @objc func showView(){
        print("Settings")
    }


}


