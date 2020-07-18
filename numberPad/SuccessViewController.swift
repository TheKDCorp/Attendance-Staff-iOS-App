//
//  SuccessViewController.swift
//  numberPad
//
//  Created by EDUMVA5 on 31/08/18.
//  Copyright © 2018 NMC. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        let url = Bundle.main.url(forResource: "gifHTML", withExtension: "html")
        self.webView.loadRequest(URLRequest(url: url!))
        
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [], animations:
        {
            self.webView.alpha = 1
        })
        { (finished: Bool) in
            
            self.performSegue(withIdentifier: "goBackSegue" , sender: self)
        }
 
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
