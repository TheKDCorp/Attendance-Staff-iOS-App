//
//  ViewController.swift
//  numberPad
//
//  Created by EDUMVA5 on 29/08/18.
//  Copyright © 2018 NMC. All rights reserved.
//

import UIKit
 var stname = ""
var code = ""
class ViewController: UIViewController {
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var go: UIButton!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    

    var number1 = Int()
    var number2 = Int()
    var number3 = Int()
    var number4 = Int()
    var checkValues : Int = 1
    var passcodeS = String()
    var passcode = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(getIn)
        // Do any additional setup after loading the view, typically from a nib.
        
        x=0
        btnSubmit.alpha = 0
        back.alpha = 1
        
        backfunc()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn1Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 1
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()
        }
        
        else if (checkValues == 2)
        {
            number2 = 1
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        
        else if (checkValues == 3)
        {
            number3 = 1
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        
        else if (checkValues == 4)
        {
            number4 = 1
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            
            disableAll()

        }
        
        backfunc()
        
        
    }
    @IBAction func btn2Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 2
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()

        }
        else if (checkValues == 2)
        {
            number2 = 2
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 2
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 2
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        backfunc()
        
    }
    @IBAction func btn3Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 3
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()

        }
        else if (checkValues == 2)
        {
            number2 = 3
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 3
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 3
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    @IBAction func btn4Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 4
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()


        }
        else if (checkValues == 2)
        {
            number2 = 4
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 4
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 4
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    @IBAction func btn5Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 5
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()

        }
        else if (checkValues == 2)
        {
            number2 = 5
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 5
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 5
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    
    @IBAction func btn6Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 6
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()


        }
        else if (checkValues == 2)
        {
            number2 = 6
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 6
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 6
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    @IBAction func btn7Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 7
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")

            enableAll()

        }
        else if (checkValues == 2)
        {
            number2 = 7
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 7
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 7
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    @IBAction func btn8Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 8
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")

            enableAll()

        }
        else if (checkValues == 2)
        {
            number2 = 8
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 8
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 8
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    @IBAction func btn9Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 9
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()

        }
        else if (checkValues == 2)
        {
            number2 = 9
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 9
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 9
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    @IBAction func btn0Action(_ sender: Any) {
        if (checkValues == 1)
        {
            number1 = 0
            checkValues = 2
            btnSubmit.alpha = 0
            image1.image = #imageLiteral(resourceName: "filled")
            image2.image = #imageLiteral(resourceName: "blank")
            image3.image = #imageLiteral(resourceName: "blank")
            image4.image = #imageLiteral(resourceName: "blank")
            enableAll()

        }
        else if (checkValues == 2)
        {
            number2 = 0
            checkValues = 3
            btnSubmit.alpha = 0
            image2.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 3)
        {
            number3 = 0
            checkValues = 4
            btnSubmit.alpha = 0
            image3.image = #imageLiteral(resourceName: "filled")
            enableAll()

        }
        else if (checkValues == 4)
        {
            number4 = 0
            passcodeS = "\(number1)\(number2)\(number3)\(number4)"
            print(passcodeS)
            checkValues = 5
            btnSubmit.alpha = 1
            image4.image = #imageLiteral(resourceName: "filled")
            disableAll()

        }
        
        backfunc()
        
    }
    
    @IBAction func btnDeleteAction(_ sender: Any) {
        
        
        if (checkValues == 1)
        {
            
        }
        
        else if (checkValues == 2)
        {
            checkValues = 1
            image1.image = #imageLiteral(resourceName: "blank")
            btnSubmit.alpha = 0
        }
        
        else if (checkValues == 3)
        {
            checkValues = 2
            image2.image = #imageLiteral(resourceName: "blank")
            btnSubmit.alpha = 0
        }
        
        else if (checkValues == 4)
        {
            checkValues = 3
            image3.image = #imageLiteral(resourceName: "blank")
            btnSubmit.alpha = 0
            
        }
        
        else if (checkValues == 5)
        {
            checkValues = 4
            image4.image = #imageLiteral(resourceName: "blank")
            btnSubmit.alpha = 0
            enableAll()
        }
        
        backfunc()
        
    }
    
    
    func backfunc()
    {
        if (checkValues == 1)
        {
            back.alpha = 0
        }
        
        else
        {
            back.alpha = 1
        }
    }
    
    func disableAll()
    {
        btn1.isEnabled = false
        btn2.isEnabled = false
        btn3.isEnabled = false
        btn4.isEnabled = false
        btn5.isEnabled = false
        btn6.isEnabled = false
        btn7.isEnabled = false
        btn8.isEnabled = false
        btn9.isEnabled = false
        btn0.isEnabled = false
    }
    
    func enableAll()
    {
        btn1.isEnabled = true
        btn2.isEnabled = true
        btn3.isEnabled = true
        btn4.isEnabled = true
        btn5.isEnabled = true
        btn6.isEnabled = true
        btn7.isEnabled = true
        btn8.isEnabled = true
        btn9.isEnabled = true
        btn0.isEnabled = true
    }
    
    
    
    @IBAction func submit(_ sender: Any) {
        print(passcodeS)
        // Do any additional setup after loading the view, typically from a nib.
        // let user = txt1.text
        //let password = txt2.text
        //     var inputuser = ""
        
        guard let url = URL(string: "http://192.168.1.8:8080/att_system/Register.php?method=checkpasscode&passcode="+passcodeS)
            
            else { return }
        
        
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
                
            }
            
            if let data = data {
                print(data)
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    struct outp: Decodable {
                        let response: URL
                        let staffname: URL
                        
                        
                        enum CodingKeys : String, CodingKey {
                            case response = "response"
                            case staffname = "staffname"
                            
                        }
                    }
                    
                    guard let output = try? JSONDecoder().decode(outp.self, from: data) else {
                        print("Error: Couldn't decode data")
                        return
                    }
                    
                    print("Respone: \(output.response)")
                   print("Staff Name: \(output.staffname)")
                    stname = "\(output.staffname)"
                    
                    
                    let otp = "Response: \(output.response)"
                    
    
                    
                    if (otp == "Response: true")
                    {
                        
                        
                        print("LoggedIn")
                        
                        DispatchQueue.main.async {
                            let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerCamera")
                            self.present(homeVc!, animated: true, completion: nil)
                            code = self.passcodeS
                            
                        }
                 
                        
                    }
                    
                    else if (otp == "Response: false")
                    {
                        DispatchQueue.main.async
                        {
                            self.checkValues = 1
                            self.image1.image = #imageLiteral(resourceName: "blankIncorrect")
                            self.image2.image = #imageLiteral(resourceName: "blankIncorrect")
                            self.image3.image = #imageLiteral(resourceName: "blankIncorrect")
                            self.image4.image = #imageLiteral(resourceName: "blankIncorrect")
                            self.passcodeS = ""
                            self.btnSubmit.alpha = 0
                            self.back.alpha = 0
                            self.enableAll()
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                } catch {
                    print(error)
                    
                }
                
            }
            }.resume()
    }

    }
    
    

