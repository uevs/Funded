//
//  ContentView.swift
//  Funded
//
//  Created by leonardo on 28/01/22.
//

import SwiftUI

struct ContentView: View {
    var grants = AvailableGrants()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(grants.grants, id: \.self) { grant in
                        CardView(grant: grant)
                            .padding(.bottom, 10)
                    }
                }
            }
            .navigationTitle("Funded")
            .toolbar(content: {Image(systemName: "star")})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
