//
//  CARINFO.swift
//  Carbon Cycle
//
//  Created by Rish Srivastava on 12/14/18.
//  Copyright © 2018 Rishabh Srivastava. All rights reserved.
//

import UIKit

class CARINFO: UIViewController {

    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backButton.layer.cornerRadius = 5
        self.continueButton.layer.cornerRadius = 5
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
