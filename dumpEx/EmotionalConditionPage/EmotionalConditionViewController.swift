//
//  EmotionalViewController.swift
//  dumpEx
//
//  Created by admin1 on 3.10.22.
//

import UIKit

class EmotionalConditionViewController: UIViewController {
    
    let indetifire = "keyCell"
    let tableCellName = ["Эмоциональное состояние", "1212я", "Т12ты", "Фото Видео", "Помощь"]

    @IBOutlet weak var tableContainer: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension EmotionalConditionViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableCellName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: indetifire, for: indexPath)
        
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.text = tableCellName[indexPath.row]
        
        return cell
    }
    
  
    
    
}
