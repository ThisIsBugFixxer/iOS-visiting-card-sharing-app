//
//  headerView.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 26/03/22.
//

import SwiftUI

struct headerView: View {
    
    var isCards: Bool
    
    var body: some View {
        HStack{
            
            Text("Cards!")
             .font(.title)
             .fontWeight(.semibold)
             .multilineTextAlignment(.leading)
             .foregroundColor(.gray)
             .padding(.all)

            Spacer()
            
            if(isCards) {
            NavigationLink(destination: secondView()) {
//                   Text("Second View")
                
                    Image(systemName: "greetingcard.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.blue)
                }.padding(.all, 25.0)
                    .padding(.leading, 0.0)
                

     }
        
        
        else {
            NavigationLink(destination: ContentView()) {
//                   Text("Second View")
                
                    Image(systemName: "qrcode.viewfinder")
                        .font(.system(size: 35))
                        .foregroundColor(.blue)
                }
            .padding(.all, 25.0)
                       .padding(.leading, 0.0)

     }
        }
        .overlay(Rectangle().stroke(.gray, lineWidth: 0)) // just to adda border around, make linewidth 0 to remove
    }
}

struct headerView_Previews: PreviewProvider {
    static var previews: some View {
        headerView(isCards: true)
    }
}
