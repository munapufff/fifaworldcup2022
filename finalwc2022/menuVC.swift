//
//  menuVC.swift
//  finalwc2022
//
//  Created by Jirapat P on 28/11/2565 BE.
//

import UIKit

class menuVC: UIViewController {

    @IBAction func aBtn(_ sender: Any) {
        menuToteam(parameter: "A")
    }

    @IBAction func bBtn(_ sender: Any) {
        menuToteam(parameter: "B")
    }
    
    @IBAction func cBtn(_ sender: Any) {
        menuToteam(parameter: "C")
    }
    
    @IBAction func dBtn(_ sender: Any) {
        menuToteam(parameter: "D")
    }
    
    @IBAction func eBtn(_ sender: Any) {
        menuToteam(parameter: "E")
    }
    
    @IBAction func fBtn(_ sender: Any) {
        menuToteam(parameter: "F")
    }
    
    @IBAction func gBtn(_ sender: Any) {
        menuToteam(parameter: "G")
    }
    
    @IBAction func hBtn(_ sender: Any) {
        menuToteam(parameter: "H")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    //storyboardID + ส่งค่าgroup
    func menuToteam(parameter: String) {
        let teamID = storyboard?.instantiateViewController(withIdentifier: "teamview") as? teamTBVC
        teamID?.group = parameter         //teamID?.group = "A"
        self.navigationController?.pushViewController(teamID!,animated: true)
    }

}
