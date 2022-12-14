//
//  SettingsViewController.swift
//  dumpEx
//
//  Created by admin1 on 19.09.22.
//

import UIKit

class SettingsViewController: UIViewController {
    
   let myDatePicker: UIDatePicker = UIDatePicker()
    
    @IBOutlet weak var headerLabel: UILabel!
   
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var mainStack: UIStackView!
    @IBOutlet weak var relationsStack: UIStackView!
    @IBOutlet weak var moneyStack: UIStackView!
    @IBOutlet weak var ageStack: UIStackView!
    @IBOutlet weak var dataStack: UIStackView!
    @IBOutlet weak var nameStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myDatePicker.datePickerMode = .date
        myDatePicker.preferredDatePickerStyle = .wheels
        myDatePicker.timeZone = TimeZone.current
        myDatePicker.frame = CGRect(x: 0, y: 0, width: 250 , height: 150)
    
        mainStack.layer.cornerRadius = 10
        ageStack.layer.cornerRadius = 10
        nameStack.layer.cornerRadius = 10
        dataStack.layer.cornerRadius = 10
        moneyStack.layer.cornerRadius = 10
        relationsStack.layer.cornerRadius = 10
        
        saveButton.layer.cornerRadius = 10
    }


//    @IBAction func saveSettings(_ sender: Any) {
//        print(myDatePicker.date)
//        print(mouthField.text ?? 0)
//        print(expensesField.text ?? 0)
//        print(currencyField.text ?? 0)
//        dismiss(animated: true, completion: nil)
//    }
    
//
    @IBAction func setData(_ sender: Any) {
        let alertController = UIAlertController(title: "\n\n\n\n\n\n\n\n", message: nil, preferredStyle: .actionSheet)
        alertController.view.addSubview(myDatePicker)
        let somethingAction = UIAlertAction(title: "Ok", style: .default) { Picker in
            let formater = DateFormatter()
            formater.dateFormat = "yyyy.MM.dd"
            formater.timeZone = TimeZone.current
           // self.dataLabel.text = formater.string(from: self.myDatePicker.date)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(somethingAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion:{})
    }
}

//extension SettingsViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == ageField{
//            expensesField.becomeFirstResponder()
//        } else {
//            textField.resignFirstResponder()
//        }
//        return true
//    }
//}
