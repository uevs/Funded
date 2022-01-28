//
//  AvailableGrants.swift
//  Funded
//
//  Created by leonardo on 28/01/22.
//

import Foundation
import SwiftUI

class AvailableGrants: ObservableObject {
    @Published var grants: Array<Grant>
    
    var colors = [Color("MadOrange"), Color("MadGreen"), Color("MadPurple"),Color("MadPink"),Color("MadYellow")]
    
    
    var grant1 = Grant(name:"MaddaGrant 2022", amount: 20000, categories: ["War", "Love", "Colors", "Photoraphy"], restrictions: ["Italy","Women"])
    var grant2 = Grant(name:"Beni Culturali 2022", amount: 100, categories: ["Reinassance", "History", "Paintings"], restrictions: ["Italy"])
    var grant3 = Grant(name:"Germangrantknofterartsmuseumseirzgrant", amount: 100000, categories: ["Brutalism", "Galleries", "Minorities"], restrictions: ["EU"])
    var grant4 = Grant(name:"Il Bando Bello", amount: 100000000, categories: ["Art"], restrictions: ["World"])
    var grant5 = Grant(name:"CryptoGrant", amount: 9999, categories: ["NFT"], restrictions: ["Cyberspace"])
    var grant6 = Grant(name:"Untitled Grant", amount: 204851, categories: ["Abstract", "Prison"], restrictions: ["Mt. Vesuvius"])
    
    
    init() {
        
        grants = [grant1,grant2,grant3,grant4,grant5, grant6]
        colorize()
    }
    
    func colorize() {
        var counter = 0
        
        for var grant in grants {
            if counter < 4 {
                grant.color = colors[counter]
                counter += 1
            } else {
                grant.color = colors[counter]
                counter = 0
            }
            grants.removeAll(where: {$0.id == grant.id})
            grants.append(grant)
        }
    }
    
}
