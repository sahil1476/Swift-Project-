//
//  ViewController3.swift
//  ProjectNew
//
//  Created by Himanshi Rathore on 03/11/23.
//

import UIKit
var name2 = String()
var age2 = String()
var no2 = String()
var add2 = String()
var id2 = String()
var cityname2 = String()
var hotelname2 = String()
var noofrooms2 = String()
var noofperson2 = String()

var roomprice2 = String()


class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        totalbill.text = roomprice2
       // testroomprice.text  roomprice2
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBOutlet weak var paymetname: UILabel!
    
    @IBAction func paymetmethod(_ sender: Any) {
        
        let pay1 = {
            (action: UIAlertAction)-> Void in
            self.paymetname.text = "Paytm"
        }
        let pay2 = {
            (action: UIAlertAction)-> Void in
            self.paymetname.text = "Google Pay"
        }
        let pay3 = {
            (action: UIAlertAction)-> Void in
            self.paymetname.text = "UPI"
        }
        
        let payment = UIAlertController(title: "Payment Method", message: "Choose your preferred payment method", preferredStyle: .actionSheet)
        payment.addAction(UIAlertAction(title: "Paytm", style: .default, handler: pay1))
                payment.addAction(UIAlertAction(title: "Google Pay", style: .default, handler: pay2))
                payment.addAction(UIAlertAction(title: "UPI", style: .default, handler: pay3))
                self.present(payment, animated: true)
            
    }
    
    @IBOutlet weak var totalbill: UILabel!
    
    
    @IBAction func calbillbtn(_ sender: Any) {
        name3 = name2
        age3 = age2
        no3 = no2
        add3 = add2
        id3 = id2
        cityname3 = cityname2
        hotelname3 = hotelname2
        noofrooms3 = noofrooms2
        noofperson3 = noofperson2
        roomprice3 = roomprice2
        performSegue(withIdentifier: "s4", sender: self)
        
    }
    
    
    
}
