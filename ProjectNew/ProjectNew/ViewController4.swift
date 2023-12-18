//
//  ViewController4.swift
//  ProjectNew
//
//  Created by Himanshi Rathore on 03/11/23.
//

import UIKit
import AVFoundation
import AVKit

var name3 = String()
var age3 = String()
var no3 = String()
var add3 = String()
var id3 = String()
var cityname3 = String()
var hotelname3 = String()
var noofrooms3 = String()
var noofperson3 = String()

var roomprice3 = String()


class Property {
    var key:String;
    var value:String;
    init(key: String, value: String) {
        self.key = key
        self.value = value
    }
}

class ViewController4: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var UserDetails: [Property] = []
    var HotelDetails: [Property] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        name4.text = name3
//        age4.text = age3
//        no4.text = no3
//        add4.text = add3
//        id4.text = id3
        
        UserDetails.append(Property(key: "Name", value: name3))
        UserDetails.append(Property(key: "Age", value: age3))
        UserDetails.append(Property(key: "Contact", value: no3))
        UserDetails.append(Property(key: "Address", value: add3))
        UserDetails.append(Property(key: "ID No.", value: id3))
        
//        cityname4.text = cityname3
//        hotelname4.text = hotelname3
//        noofrooms4.text = noofrooms3
//        noofperson4.text = noofrooms3
//        roomprice4.text = roomprice3
        
        HotelDetails.append(Property(key: "Hotel Name", value: cityname3))
        HotelDetails.append(Property(key: "Hotel Location", value: hotelname3))
        HotelDetails.append(Property(key: "No of Rooms", value: noofrooms3))
        HotelDetails.append(Property(key: "No of Person", value: noofperson3))
        HotelDetails.append(Property(key: "Total Amount", value: roomprice3))
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var name4: UILabel!
    
    @IBOutlet weak var age4: UILabel!
    
    @IBOutlet weak var id4: UILabel!
    @IBOutlet weak var no4: UILabel!
    
    @IBOutlet weak var add4: UILabel!
    
    @IBOutlet weak var hotelname4: UILabel!
    @IBOutlet weak var cityname4: UILabel!
    @IBOutlet weak var noofrooms4: UILabel!
    @IBOutlet weak var noofperson4: UILabel!
    @IBOutlet weak var roomprice4: UILabel!
    
    @IBAction func darkMode(_ sender: Any) {
        if switchBtn.isOn {
            view.backgroundColor = UIColor.cyan
        } else {
            view.backgroundColor = UIColor.white
        }
        
        let path = Bundle.main.path(forResource: "whoosh", ofType: "mp3")
        let urlPath = URL(fileURLWithPath: path!)
        var btnAudio: AVAudioPlayer!
        do {
            btnAudio = try AVAudioPlayer(contentsOf: urlPath)
        }catch {
        //
            print("Can't Play Audio")
        }
        btnAudio.play()
    }
    

    
    @IBOutlet weak var switchBtn: UISwitch!
    var sections = ["User Details","Hotel Details"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return UserDetails.count;
        }else {
            return HotelDetails.count;
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellObj = tableView.dequeueReusableCell(withIdentifier: "cellObj", for: indexPath)
        if(indexPath.section == 0) {
            cellObj.textLabel?.text = UserDetails[indexPath.row].key
            cellObj.detailTextLabel?.text = String(UserDetails[indexPath.row].value)
        }
        else {
            cellObj.textLabel?.text = HotelDetails[indexPath.row].key
            cellObj.detailTextLabel?.text = String(HotelDetails[indexPath.row].value)
        }
        return cellObj;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
}
