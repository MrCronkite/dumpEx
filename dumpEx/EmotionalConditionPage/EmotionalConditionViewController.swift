//
//  EmotionalViewController.swift
//  dumpEx
//
//  Created by admin1 on 3.10.22.
//

import UIKit

class EmotionalConditionViewController: UIViewController {
    
    let indetifire = "keyCell"
    let tableCellName = ["Ваше Эмоциональное состояние", "День 1", "День 2", "День 3", "День 4", "День 5","День 6","День 7","День 8", "День 9", "День 10", "Неделя 2", "Неделя 3", "Неделя 4", "Неделя 5", "2 Месяца", "3 Месяца", "4 месяца", "Полгода!"]

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
