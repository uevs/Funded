//
//  Grant.swift
//  Funded
//
//  Created by leonardo on 28/01/22.
//

import Foundation
import SwiftUI


struct Grant: Identifiable, Hashable {
    var id = UUID()
    var name: String = "aaa"
    var color: Color = Color("MadYellow")
    var amount: Int = 0
    var deadline: Date = Date.now
    var categories: Array<String> = ["War","Love","Photography"]
    var restrictions: Array<String> = ["EU","Galleries"]
    var favorite: Bool = false
    
}
