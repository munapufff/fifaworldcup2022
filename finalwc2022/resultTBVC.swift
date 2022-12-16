//
//  resultTBVC.swift
//  finalwc2022
//
//  Created by Jirapat P on 28/11/2565 BE.
//

import UIKit

class resultTBVC: UITableViewController {
    
    var result=String()
    var team1=String()
    var team2=String()
    var teamArray = [String]()
    var teamDict = [String:[String]]()
    var resultDict = [String:[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 260
        
        //teamPlist > match(2)
        let teamUrl = Bundle.main.url(forResource: "teamPlist", withExtension: "plist")!
        let teamData = try! Data(contentsOf: teamUrl)
        let teamList = try! PropertyListSerialization.propertyList(from: teamData, options: [], format: nil)
       teamDict = teamList as! Dictionary
        
        teamArray = [team1 , team2]
        
        //resultPlist > matchno, team1, team2, result0-2
        let resultUrl = Bundle.main.url(forResource: "resultPlist", withExtension: "plist")!
        let resultData = try! Data(contentsOf: resultUrl)
        let resultList = try! PropertyListSerialization.propertyList(from: resultData, options: [], format: nil)
       resultDict = resultList as! Dictionary
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamDict[result]!.count //2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultcell", for: indexPath) as! resultViewCell
        
        cell.team1Img.image = UIImage.init(named: resultDict[teamArray[indexPath.row]]![0])
        cell.team2Img.image = UIImage.init(named: resultDict[teamArray[indexPath.row]]![1])

        cell.team1Label.text = resultDict[teamArray[indexPath.row]]![0]
        cell.team2Label.text = resultDict[teamArray[indexPath.row]]![1]
        
        cell.team1Label.text = resultDict[teamArray[indexPath.row]]![0]
        cell.team2Label.text = resultDict[teamArray[indexPath.row]]![1]
        
        cell.resultNo.text = resultDict[teamArray[indexPath.row]]![2]

        return cell
    }
}
