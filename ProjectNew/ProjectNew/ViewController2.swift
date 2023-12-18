//
//  ViewController2.swift
//  ProjectNew
//
//  Created by Himanshi Rathore on 03/11/23.
//

import UIKit
var name1 = String()
var age1 = String()
var no1 = String()
var add1 = String()
var id1 = String()

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //test.text = name1
        
        
        // Do any additional setup after loading the view.
    }
    var city = String()
    var hotelname = String()
    var hotelprice = Double()
    
    
    @IBOutlet weak var cityname: UILabel!
    @IBAction func selectcitybtn(_ sender: Any) {
        let chandigarhhandler = {
            (action: UIAlertAction)-> Void in
            self.cityname.text = "Chandigarh"
            self.city = "Chandigarh"
        }
        let Phagwarahandler = {
            (action: UIAlertAction)-> Void in
            self.cityname.text = "Phagwara"
            self.city = "Phagwara"
        }
        let Amritsarhandler = {
            (action: UIAlertAction)-> Void in
            self.cityname.text = "Amritsar"
            self.city = "Amritsar"
        }
        let Jalandharhandler = {
            (action: UIAlertAction)-> Void in
            self.cityname.text = "Jalandhar"
            self.city = "Jalandhar"
        }
        let cityselector = UIAlertController(title: "Cities", message: "Select city for hotels", preferredStyle: .actionSheet)
        cityselector.addAction(UIAlertAction(title: "Phagwara", style: .default, handler: Phagwarahandler))
        cityselector.addAction(UIAlertAction(title: "Chandigarh", style: .default, handler: chandigarhhandler))
        cityselector.addAction(UIAlertAction(title: "Amritsar", style: .default, handler: Amritsarhandler))
        cityselector.addAction(UIAlertAction(title: "Jalandhar", style: .default, handler: Jalandharhandler))
        cityselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(cityselector, animated: true, completion: nil)
    
    }
    
    @IBOutlet weak var hotelselect: UILabel!
    
    @IBAction func selecthotelbtn(_ sender: Any) {
        let a = city
        if(a == "Phagwara"){
            let hirhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Hotel Indian Residency"
                self.hotelname = "Hotel Indian Residency"
                self.hotelprice = 1500
            }
            let vrhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Victoria Residency"
                self.hotelname = "Victoria Residency"
                self.hotelprice = 1700
            }
            let gmghhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "GMG Hotel"
                self.hotelname = "GMG Hotel"
                self.hotelprice = 1200
            }
            let aihandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Awadesh Inn"
                self.hotelname = "Awadesh Inn"
                self.hotelprice = 1350
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "Hotel Indian Residency", style: .default, handler: hirhandler))
            hotelselector.addAction(UIAlertAction(title: "Victoria Residency", style: .default, handler: vrhandler))
            hotelselector.addAction(UIAlertAction(title: "GMG Hotel", style: .default, handler: gmghhandler))
            hotelselector.addAction(UIAlertAction(title: "Awadesh Inn", style: .default, handler: aihandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
            
        }else if(a == "Chandigarh"){
            let rukshandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Royal UK Stays"
                self.hotelname = "Royal UK Stays"
                self.hotelprice = 1800
            }
            let ghhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Green House"
                self.hotelname = "Green House"
                self.hotelprice = 1100
            }
            let cghhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Chawla Guest House"
                self.hotelname = "Chawla Guest House"
                self.hotelprice = 2000
            }
            let sghhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Surya Guest House"
                self.hotelname = "Surya Guest House"
                self.hotelprice = 1550
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "Royal UK Stays", style: .default, handler: rukshandler))
            hotelselector.addAction(UIAlertAction(title: "Green House", style: .default, handler: ghhandler))
            hotelselector.addAction(UIAlertAction(title: "Chawla Guest House", style: .default, handler: cghhandler))
            hotelselector.addAction(UIAlertAction(title: "Surya Guest House", style: .default, handler: sghhandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
        }else if(a == "Amritsar"){
            let htvhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Hotel Temple View"
                self.hotelname = "Hotel Temple View"
                self.hotelprice = 1300
            }
            let hshandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Hotel Sallow"
                self.hotelname = "Hotel Sallow"
                self.hotelprice = 1900
            }
            let qlhhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Queen Land Hotel"
                self.hotelname = "Queen Land Hotel"
                self.hotelprice = 1750
            }
            let svrhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Shree Vishnu Residency"
                self.hotelname = "Shree Vishnu Residency"
                self.hotelprice = 1650
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "Hotel Temple View", style: .default, handler: htvhandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel Sallow", style: .default, handler: hshandler))
            hotelselector.addAction(UIAlertAction(title: "Queen Land Hotel", style: .default, handler: qlhhandler))
            hotelselector.addAction(UIAlertAction(title: "Shree Vishnu Residency", style: .default, handler: svrhandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
        }else if(a == "Jalandhar"){
            let tdihandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "The Days Inn"
                self.hotelname = "The Days Inn"
                self.hotelprice = 1500
            }
            let hwwhandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Hotel White Western"
                self.hotelname = "Hotel White Western"
                self.hotelprice = 1250
            }
            let hghandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Hotel Golden"
                self.hotelname = "Hotel Golden"
                self.hotelprice = 1400
            }
            let hgthandler = {
                (action: UIAlertAction)-> Void in
                self.hotelselect.text = "Hotel Grand Tulip"
                self.hotelname = "Hotel Grand Tulip"
                self.hotelprice = 1750
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "The Days Inn", style: .default, handler: tdihandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel White Western", style: .default, handler: hwwhandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel Golden", style: .default, handler: hghandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel Grand Tulip", style: .default, handler: hgthandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
        }
    }
    
    var noofrooms = Int()
    var roomprice = Double()
    
    @IBOutlet weak var roomsImageView: UIImageView!
    
    @IBAction func roomselector(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            self.noofrooms = 1
            self.roomprice = self.hotelprice
            roomsImageView.image = UIImage(named: "room1")
        }else if(sender.selectedSegmentIndex == 1){
            self.noofrooms = 2
            self.roomprice = self.hotelprice * 1.9
            roomsImageView.image = UIImage(named: "room2")
        }else if(sender.selectedSegmentIndex == 2){
            self.noofrooms = 3
            self.roomprice = self.hotelprice * 2.7
            roomsImageView.image = UIImage(named: "room3")
        }else if(sender.selectedSegmentIndex == 3){
            self.noofrooms = 4
            self.roomprice = self.hotelprice * 3.5
            roomsImageView.image = UIImage(named: "room4")
        }
    }
    
    
    @IBOutlet weak var noofperson: UITextField!
    
    @IBAction func personselector(_ sender: UISlider) {
        let h = Int(sender.value)
                noofperson.text = "\(h)"
            
    }
    
    
    @IBAction func nextbtn1(_ sender: Any) {
        name2 = name1
        age2 = age1
        no2 = no1
        add2 = add1
        id2 = id1
        cityname2 = cityname.text!
        hotelname2 = hotelselect.text!
        noofrooms2 = String(noofrooms)
        noofperson2 = noofperson.text!
        roomprice2 = String(roomprice)
        performSegue(withIdentifier: "s2", sender: self)
    }
    
    
}
