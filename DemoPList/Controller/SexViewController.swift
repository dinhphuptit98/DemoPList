//
//  SexViewController.swift
//  DemoPList
//
//  Created by dinhphu on 4/24/18.
//  Copyright © 2018 dinhphu. All rights reserved.
//

import UIKit

class SexViewController: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet var chooseButtons: [UIButton]!
    @IBOutlet weak var saveButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        saveButton.isEnabled = false
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        sender.isSelected = true
        
        chooseButtons.forEach{ check in
            if check != sender {
                check.isSelected = false
                saveButton.isEnabled = true
            }
        }
        UserDefaults.standard.removeObject(forKey: "Sex")
        UserDefaults.standard.set(sender.titleLabel?.text, forKey: "Sex")
        statusLabel.text = UserDefaults.standard.string(forKey: "Sex")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
