//
//  ViewController.swift
//  dumpEx
//
//  Created by admin1 on 14.09.22.
//

import UIKit

class ViewController: UIViewController {
    
    let indetifire = "keyCell"
    let tableCellName = ["Эмоциональное состояние", "Полезная информация", "Тесты", "Фото Видео", "Помощь"]
    
    @IBOutlet weak var tableViewContent: UITableView!
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


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableCellName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewContent.dequeueReusableCell(withIdentifier: indetifire, for: indexPath)
        
        cell.textLabel?.text = tableCellName[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hello цщкдв")
    }
    
    
}


