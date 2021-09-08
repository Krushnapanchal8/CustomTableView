//
//  ViewController.swift
//  cTableVIEW
//
//  Created by Mac on 17/06/1943 Saka.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var listPlayer = [PlayerData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let player1 = PlayerData(pName: "Virat Kohli", cntName: "India", rPlayer: 840, photoPlayer: "Virat-Kohli")
        listPlayer.append(player1)
        
        let player2 = PlayerData(pName: "Rohit Sharma", cntName: "India", rPlayer: 832, photoPlayer: "Rohit-Sharma")
        listPlayer.append(player2)
        
        let player3 = PlayerData(pName: "K L Rahul", cntName: "India", rPlayer: 825, photoPlayer: "K-L-Rahul")
        listPlayer.append(player3)
        
        let player4 = PlayerData(pName: "Sangakara", cntName: "Sri Lanka", rPlayer: 810, photoPlayer: "Sangakara-Kumar")
        listPlayer.append(player4)
        
        let player5 = PlayerData(pName: "Kane Williamson", cntName: "NZ", rPlayer: 800, photoPlayer: "Kane-Williamson")
        listPlayer.append(player5)
        
        let player6 = PlayerData(pName: "Glenn Maxwell", cntName: "Australia", rPlayer: 790, photoPlayer: "Glenn-maxwell")
        listPlayer.append(player6)
        
        let player7 = PlayerData(pName: "T Dilshan", cntName: "Sri Lanka", rPlayer: 785, photoPlayer: "Dilshan-T-K")
        listPlayer.append(player7)
        
        let player8 = PlayerData(pName: "David Warner", cntName: "Australia", rPlayer: 780, photoPlayer: "david-warner")
        listPlayer.append(player8)
        
        let player9 = PlayerData(pName: "Chris Gayle", cntName: "WI", rPlayer: 778, photoPlayer: "Chris-gayle")
        listPlayer.append(player9)
        
        let player10 = PlayerData(pName: "A.B.D Villiers", cntName: "Sauth Africa", rPlayer: 777, photoPlayer: "ABD-Villiers")
        listPlayer.append(player10)
        
        myTableView.tableFooterView = UIView(frame: .zero)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPlayer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        cell.rankLabel.text = "\(indexPath.row+1)"
        cell.playerNameLabel.text = listPlayer[indexPath.row].playerName
        cell.countryLabel.text = listPlayer[indexPath.row].Country
        cell.playerImage.image = UIImage(named: listPlayer[indexPath.row].playerPhoto)
        cell.ratingLabel.text = "\(listPlayer[indexPath.row].rating)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
}
