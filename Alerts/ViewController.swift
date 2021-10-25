//
//  ViewController.swift
//  Alerts
//
//  Created by Connor Reed on 10/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var youSaidLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "You Have an Alert", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        alert.addTextField(configurationHandler: {textField in
            textField.placeholder = "What did you say?"
            
        })
        alert.addAction(UIAlertAction(title:"submit", style:.default, handler:{action in
            if let text = alert.textFields?.first?.text{
                self.youSaidLabel.text = "You Said: \(text)"
            }
        }))
        self.present(alert, animated: true)
    }
}

