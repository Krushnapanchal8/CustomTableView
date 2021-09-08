//
//  PlayerData.swift
//  cTableVIEW
//
//  Created by Mac on 17/06/1943 Saka.
//

import Foundation

class PlayerData {
    var playerName: String
    var Country: String
    var rating: Int32
    var playerPhoto: String
    
    
    init(pName:String,cntName:String,rPlayer:Int32,photoPlayer:String) {
        playerName = pName
        Country = cntName
        rating = rPlayer
        playerPhoto = photoPlayer
    }
}
