//
//  ViewController.swift
//  ProjectNew
//
//  Created by Himanshi Rathore on 03/11/23.
//

import UIKit
import WebKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    var urlstring = URL(string: "https://google.com")
        var urlReq = URLRequest(url: urlstring!)
        webview.loadRequest(urlReq)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBAction func loginbtn(_ sender: Any) {
        let a = username.text!
        let b = password.text!
        if (a == "abc" && b == "123"){
            performSegue(withIdentifier: "s0", sender: self)
        }else{
            let action1 = {
                (a: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.red
            }
            let alert = UIAlertController(title: "Warning", message: "retry", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: action1))
            present(alert,animated: true,completion: nil)
        }
    }
    //}
    
    @IBOutlet weak var webview: UIWebView!
    
    
    
    
}
