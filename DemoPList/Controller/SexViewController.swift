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
        saveButton.isEnabled = false
    }
    override func viewWillAppear(_ animated: Bool) {
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        
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