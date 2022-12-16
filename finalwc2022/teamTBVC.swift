//
//  teamTBVC.swift
//  finalwc2022
//
//  Created by Jirapat P on 28/11/2565 BE.
//

import UIKit

class teamTBVC: UITableViewController {
    
    var group:String?
    var groupDict = [String:[String]]()
    
    var teamDict = [String:[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        print(group!)
        self.tableView.rowHeight = 130
        
        let url = Bundle.main.url(forResource: "groupPlist", withExtension: "plist")!
        let data = try! Data(contentsOf: url)
        let groupList = try! PropertyListSerialization.propertyList(from: data, options: [], format: nil)
        groupDict = groupList as! Dictionary
        
        let teamUrl = Bundle.main.url(forResource: "teamPlist", withExtension: "plist")!
        let teamData = try! Data(contentsOf: teamUrl)
        let teamList = try! PropertyListSerialization.propertyList(from: teamData, options: [], format: nil)
        teamDict = teamList as! Dictionary
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupDict[group!]!.count //4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamcell", for: indexPath) as! teamViewCell
        
        cell.teamImg.image = UIImage.init(named: groupDict[group!]![indexPath.row])
        cell.nameLabel.text = groupDict[group!]![indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let resultID = storyboard?.instantiateViewController(withIdentifier: "resultview") as? resultTBVC
        let match:String = groupDict[group!]![indexPath.row]
        
        resultID?.result = groupDict[group!]![indexPath.row] //ชื่อประเทศ
        resultID?.team1 = teamDict[match]![0]
        resultID?.team2 = teamDict[match]![1]
        self.navigationController?.pushViewController(resultID!,animated: true)
    }
    
}
