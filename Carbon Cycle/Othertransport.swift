//
//  Othertransport.swift
//  Carbon Cycle
//
//  Created by Rish Srivastava on 12/14/18.
//  Copyright © 2018 Rishabh Srivastava. All rights reserved.
//

import UIKit

class Othertransport: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet var modeButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backButton.layer.cornerRadius = 5
        self.continueButton.layer.cornerRadius = 5
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleSelection(_ sender: UIButton) {
        modeButtons.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations:{
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    enum Mode: String{
        case BusServices = "Bus Services"
        case trainServices = "Train Services"
        case taxiServices = "Taxi Services"
    }
    
    @IBAction func modeTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let mode = Mode(rawValue: title) else {
            return
        }
        
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
