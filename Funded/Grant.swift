//
//  Grant.swift
//  Funded
//
//  Created by leonardo on 28/01/22.
//

import Foundation
import SwiftUI


struct Grant: Identifiable, Hashable {
    
    /// Each grant is an instance of this struct. Amount should become a currency.
    
    var id = UUID()
    var name: String = "Grant Name"
    var color: Color = Color("MadYellow")
    var amount: Int = 0
    var deadline: Date = Date.now
    var categories: Array<String> = ["War","Love","Photography"]
    var restrictions: Array<String> = ["EU","Galleries"]
    var favorite: Bool = false
    
}
