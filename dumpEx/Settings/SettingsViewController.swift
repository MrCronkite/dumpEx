//
//  SettingsViewController.swift
//  dumpEx
//
//  Created by admin1 on 19.09.22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let myDatePicker: UIDatePicker = UIDatePicker()
    
    @IBOutlet weak var dataButton: UIButton!
    @IBOutlet weak var dataLable: UILabel!
    @IBOutlet weak var mouthField: UITextField!
    @IBOutlet weak var expensesField: UITextField!
    @IBOutlet weak var currencyField: UITextField!
    
    @IBOutlet weak var buttonDone: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myDatePicker.datePickerMode = .date
        myDatePicker.preferredDatePickerStyle = .wheels
        myDatePicker.timeZone = TimeZone.current
        myDatePicker.frame = CGRect(x: 0, y: 0, width: 250 , height: 150)
    }
    
  
    

    @IBAction func saveSettings(_ sender: Any) {
        print(myDatePicker.date)
    }
    
    @IBAction func setData(_ sender: Any) {
        let alertController = UIAlertController(title: "\n\n\n\n\n\n\n\n", message: nil, preferredStyle: .actionSheet)
        alertController.view.addSubview(myDatePicker)
        let somethingAction = UIAlertAction(title: "Ok", style: .default) { Picker in
            let formater = DateFormatter()
            formater.dateFormat = "yyyy.MM.dd"
            formater.timeZone = TimeZone.current
            self.dataLable.text = formater.string(from: self.myDatePicker.date)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(somethingAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion:{})
    }
}
