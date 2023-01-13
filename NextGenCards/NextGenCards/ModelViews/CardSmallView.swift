//
//  CardSmallView.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 26/03/22.
//

import SwiftUI

struct CardSmallView: View {
    
    
    
    
    
    
    
    
    var userImage: String
    var userName: String
 
    var userDescription: String
    
    var userCompany: String
    
    var userPosition: String
    
    var userNumber: String
    
    
    @State private var showFullSheet: Bool = false
    
    var body: some View {
        VStack { // the main body view
            
            // the below one to act as the internal container
        VStack(alignment: .leading) {
           Image(userImage)
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 3.0))
                .padding(.all, 5.0)
               
                
            
//            Spacer()
            Text( "\(userPosition) at \(userCompany)" )
                .font(.headline)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.leading)
                .padding(.all, 3.0)
            
                
//            Spacer()
            
            Text(userName)
                .foregroundColor(Color.white)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.all, 3.0)
//            Spacer()
            
            Text(userDescription)
                .padding(.all, 5.0)
                .font(.body)
                .foregroundColor(Color.white)
//            Spacer()
            
            HStack {
                
                Image("TwitterLogo")
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 0.0))
                .padding(.all, 3)
           
            Image("linkedInLogo")
                
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 0.0))
                .padding(.all, 3)
            
            Image("instaLogo")
                
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 0.0))
                .padding(.all, 3)
            
            
                
                Spacer()
                
            }
        
            
                
            }
        .padding(.all, 15.0)
            
        }.background(Color(red:159/255, green:96/255, blue:200/255))
            .cornerRadius(35.0)
            .padding(.all, 5.0)
    
        
        .onTapGesture {
            showFullSheet = true
        }
        .sheet(isPresented: $showFullSheet) {
            cardView(
                
                userImage: userImage, userName: userName,
            userDescription:
                    userDescription,
        
                userCompany: userCompany,
            
                userPosition: userPosition,
            
               userNumber:
                    userNumber
            )
        }
    }
    }
    

struct CardSmallView_Previews: PreviewProvider {
    static var previews: some View {
        CardSmallView(userImage: "stevejobs-2", userName:"Steve Jobs",
                      userDescription:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit ipsum, netus posuere massa. Nam sit malesuada velit scelerisque quis in. Quam leo, malesuada ultrices diam luctus interdum et. Molestie sed tristique purus ipsum malesuada ac.",
                       userCompany: "Apple Inc.", userPosition: "I'm the CEO !!", userNumber: "123456789")
    }
}
