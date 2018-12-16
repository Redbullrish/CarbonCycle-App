//
//  Social.swift
//  Carbon Cycle
//
//  Created by Rish Srivastava on 12/16/18.
//  Copyright © 2018 Rishabh Srivastava. All rights reserved.
//
import Foundation
import UIKit


class Social: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "socialCell", for: indexPath) as! SocialTableViewCell
        return cell
    }
    
    
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView=UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = UIColor.black
        
        let cellNib = UINib(nibName: "SocialTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "socialCell")
        view.addSubview(tableView)
        
        var layoutGuide: UILayoutGuide!
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
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
