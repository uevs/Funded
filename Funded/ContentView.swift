//
//  ContentView.swift
//  Funded
//
//  Created by leonardo on 28/01/22.
//

import SwiftUI

struct ContentView: View {
    
    //Grants are stored here
    var allGrants = AvailableGrants()
    
    @State private var searchText: String = ""
    
    private var searchResults: [Grant] {
        let searchResults = allGrants.grants
        if searchText.isEmpty { return searchResults }
        return searchResults.filter {
            $0.name.lowercased().contains( searchText.lowercased()) || $0.categories.contains(searchText)
        }
    }
    
    
    
    //private var filterResults: [Grant] {
        let filterResults = allGrants.grants
       // if
    //}
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(searchResults) { grant in
                        CardView(grant: grant)
                    }
                }
            }
            .navigationTitle("Funded")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Search for grant"
            )
            .toolbar(content: {Image(systemName: "star.fill")})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
