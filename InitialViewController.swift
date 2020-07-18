//
//  InitialViewController.swift
//  numberPad
//
//  Created by EDUMVA5 on 30/08/18.
//  Copyright © 2018 NMC. All rights reserved.
//

import UIKit
var getIn = ""

class InitialViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblDay: UILabel!
    
    @IBAction func In(_ sender: Any) {
        getIn = "intime"
    }
    @IBAction func Out(_ sender: Any) {
        
        getIn = "outtime"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let date = Date()
         let formatter = DateFormatter()
        
        
        formatter.dateFormat = "hh:mm a"
        
        let result = formatter.string(from: date)
        
        
        
        lblTime.text = "\(result)"
        
        
        formatter.dateFormat = "dd-MMM-yyyy"
        
         let result2 = formatter.string(from: date)
        
        formatter.dateFormat = "EEEE"
        let month = formatter.string(from : date)
        
        lblDay.text = "\(month) \(result2) "
        
         let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
    }
    
    
    @objc func update()
    {
        let date = Date()
        let formatter = DateFormatter()
        
        
        formatter.dateFormat = "hh:mm a"
        
        let result = formatter.string(from: date)
        
        
        
        lblTime.text = "\(result)"
        
        
        formatter.dateFormat = "dd-MMM-yyyy"
        
        let result2 = formatter.string(from: date)
        
        formatter.dateFormat = "EEEE"
        let month = formatter.string(from : date)
        
        lblDay.text = "\(month) \(result2) "
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
