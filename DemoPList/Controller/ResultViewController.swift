//
//  ResultViewController.swift
//  DemoPList
//
//  Created by dinhphu on 4/24/18.
//  Copyright © 2018 dinhphu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var districtText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var sexText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityText.text = UserDefaults.standard.string(forKey: "City")
        districtText.text = UserDefaults.standard.string(forKey: "Dictrict")
        ageText.text = UserDefaults.standard.string(forKey: "Age")
        sexText.text = UserDefaults.standard.string(forKey: "Sex")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
