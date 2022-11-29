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
        stackViewMoney.backgroundColor = #colorLiteral(red: 0.3551723361, green: 0.3126738369, blue: 0.6863505244, alpha: 1)
        
        
        stackViewTest.layer.cornerRadius = 10
        stackViewTest.backgroundColor =  #colorLiteral(red: 0.3551723361, green: 0.3126738369, blue: 0.6863505244, alpha: 1)
        
        buttonSettings.backgroundColor =  #colorLiteral(red: 0.3551723361, green: 0.3126738369, blue: 0.6863505244, alpha: 1)
        buttonSettings.layer.cornerRadius = 10
        
        tableViewContent.layer.cornerRadius = 20
        
        
    }
    
    
    @IBAction func openSettingsView(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Settings", bundle:  nil)
        guard  let settingsVC = storyboard.instantiateViewController(withIdentifier: "Settings") as? SettingsViewController else { return}
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
        
        if indexPath.row == 0 {
            let storyboard = UIStoryboard(name: "EmotionalCondition", bundle: nil)
            guard let emotionalVC = storyboard.instantiateViewController(withIdentifier: "EmotionalCondition") as?
                    EmotionalConditionViewController else { return }
            present(emotionalVC, animated: true, completion: nil)
            
        } else if indexPath.row == 1 {
            let storyboard = UIStoryboard(name: "UsefulInformation", bundle: nil)
            guard let usefulInfoVC = storyboard.instantiateViewController(withIdentifier: "UsefulInformation") as?
                    UsefulInformationViewController else {return}
            present(usefulInfoVC, animated: true, completion: nil)
            
        } else if indexPath.row == 2 {
            let storyboard = UIStoryboard(name: "TestsPage", bundle: nil)
            guard let testsPageVC = storyboard.instantiateViewController(withIdentifier: "TestsPage") as?
                    TestsPageViewController else { return }
            present(testsPageVC, animated: true, completion: nil)
            
        } else if indexPath.row == 3 {
            let storyboard = UIStoryboard(name: "PhotoVideoPage", bundle: nil)
            guard let photoVideoVC = storyboard.instantiateViewController(withIdentifier: "PhotoVideo") as?
                    PhotoVideoViewController else { return }
            present(photoVideoVC, animated: true, completion: nil)
            
        } else if indexPath.row == 4 {
            let storyboard = UIStoryboard(name: "HelpPage", bundle: nil)
            guard let helpPageVC = storyboard.instantiateViewController(withIdentifier: "HelpPage") as?
                    HelpPageViewController else { return }
            present(helpPageVC, animated: true, completion: nil)
        }
            
    }
    
}


