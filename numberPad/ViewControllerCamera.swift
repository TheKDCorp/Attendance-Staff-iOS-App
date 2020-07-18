//
//  ViewController.swift
//  CAMERA
//
//  Created by EDUMVA4 on 29/08/18.
//  Copyright © 2018 EDUMVA4. All rights reserved.
//

import UIKit
var x = 0

class ViewControllerCamera: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var lblHead: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var upload: UIButton!
    
    
    @IBAction func uploadButtonTapped(sender: AnyObject) {
        
        
        myImageUploadRequest()
        DispatchQueue.main.async {
            let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerEnter")
            self.present(homeVc!, animated: true, completion: nil)
            
            
        }
        
        
        
    }
    
    
    
 override func viewDidLoad()
 {
        super.viewDidLoad()
    var aString = stname
    var newString = aString.replacingOccurrences(of: "_", with: " ")

        print(newString)
    lblHead.text = "Welcome " + newString
    
}
   
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        if(x==0)
        {
            camera()
            myImageView.image = nil
            UIView.animate(withDuration: 0.5, delay: 0.5, options: [], animations:
                {
                   self.upload.alpha = 1
                    
                
            })
            { (finished: Bool) in
                
                
        }
        
        x=1
            
        }
        
        else if (x == 1 && myImageView.image == nil)
        {
            
            camera()
            
        }
        
        
    }
    
    func camera()
    {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("YES!!")
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        myImageView.image = image
        dismiss(animated:true, completion: nil)
    }
    
    func myImageUploadRequest()
    {
    
        let myUrl = NSURL(string: "http://192.168.1.8:8080/att_system/register.php");
        
        let request = NSMutableURLRequest(url:myUrl! as URL);
        request.httpMethod = "POST";
        
        let param = [
            "name"  : stname,
            "passcode"    : code,
            "type"    : getIn,
            "method"    : "entrystaffdetails"
            
        ]
        
     
                let boundary = self.generateBoundaryString()
        
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        
        
                let imageData = UIImageJPEGRepresentation(self.myImageView.image!, 1)
        
        if(imageData==nil)  { return; }
        
                request.httpBody = self.createBodyWithParameters(parameters: param, filePathKey: "file", imageDataKey: imageData! as NSData, boundary: boundary) as Data
        
        
                self.myActivityIndicator.startAnimating();
        
       
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                print("error=\(String(describing: error))")
                return
            }
            
            // You can print out response object
            print("******* response = \(String(describing: response))")
            
            // Print out reponse body
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("****** response data = \(responseString!)")
            
            do {
                
                let json = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary
                
                print(json)
                
                DispatchQueue.main.async {
                    self.myActivityIndicator.stopAnimating()
                    // self.myImageView.image = nil;
                }
                
            }
            catch
            {
                print(error)
            }
            
        }
        
        
        task.resume()
        
    
        
    }
    
    
    
    func createBodyWithParameters(parameters: [String: String]?, filePathKey: String?, imageDataKey: NSData, boundary: String) -> NSData {
        let body = NSMutableData();
        
        if parameters != nil {
            for (key, value) in parameters! {
                body.appendString(string: "--\(boundary)\r\n")
                body.appendString(string: "Content-Disposition: form-data; name=\"\(key)\"\r\n\r\n")
                body.appendString(string: "\(value)\r\n")
            }
        }
        
        let filename = "user-profile.jpg"
        let mimetype = "image/jpg"
        
        body.appendString(string: "--\(boundary)\r\n")
        body.appendString(string: "Content-Disposition: form-data; name=\"\(filePathKey!)\"; filename=\"\(filename)\"\r\n")
        body.appendString(string: "Content-Type: \(mimetype)\r\n\r\n")
        body.append(imageDataKey as Data)
        body.appendString(string: "\r\n")
        
        
        
        body.appendString(string: "--\(boundary)--\r\n")
        
        return body
    }
    
    
    
    func generateBoundaryString() -> String {
        return "Boundary-\(NSUUID().uuidString)"
    }
    
    
}
extension NSMutableData {
    
    func appendString(string: String) {
        let data = string.data(using: String.Encoding.utf8, allowLossyConversion: true)
        append(data!)
    }
    
    
    
    
}

