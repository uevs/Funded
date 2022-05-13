//
//  CardView.swift
//  Funded
//
//  Created by leonardo on 28/01/22.
//

import SwiftUI

struct CardView: View {
    var grant: Grant
    
    var body: some View {
        ZStack {
            /// The base shape of the card
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(grant.color)
                .padding(.horizontal, 15)
            
            /// This stack contains all the card elements
            VStack(alignment: .leading) {
                Group {
                    Text(grant.name)
                        .font(.title).bold()
                    
                    Text("€\(grant.amount)")
                        .font(.title3).bold()
                        .padding(.bottom, 5)
                    
                    
                    Text("Deadline: \(grant.deadline.formatted())")
                    Text("Categories:\(grant.categories.formatted())")
                    Text("Restrictions: \(grant.restrictions.formatted())")
                }
                
                /// This stack contains the favorite button and the counter
                HStack {
                    Button {
                        /// Favorite action
                    } label: {
                        Circle()
                            .frame(width: 40, height: 40, alignment: .leading)
                            .overlay(Image(systemName: grant.favorite ? "star" : "star.fill").foregroundColor(grant.color))
                    }
                    .padding(.top, 20)
                    
                    Spacer()
                    
                    /// This needs to be implemented
                    Text("13 Days left!")
                        .font(.headline)
                    
                }
                
            }
            .foregroundColor(.white)
            .padding(.horizontal, 35)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 20)
        }
        .fixedSize(horizontal: false, vertical: true)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(grant: Grant())
    }
}
