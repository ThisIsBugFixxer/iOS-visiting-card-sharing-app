//
//  cardView.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 24/03/22.
//

import SwiftUI

struct cardView: View {
    
    var userImage: String
    var userName: String
 
    var userDescription: String
    
    var userCompany: String
    
    var userPosition: String
    
    var userNumber: String
    
    
    var body: some View {
        VStack {
//           headerView()
            
            Spacer()
            
            
            VStack {
                
                Image(userImage)
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .padding(.all, 5.0)
                    
                    
                Text(userName).font(.title3).fontWeight(.bold).multilineTextAlignment(.center).padding(.all, 5.0)

                Text(userDescription).font(.body).fontWeight(.regular).multilineTextAlignment(.center).padding(.horizontal, 5.0)
                    .padding(.bottom, 15.0)
                
                Spacer()
                
                
                HStack {
                Text("Comapny")
                    Spacer()
                    Text(userCompany)
                }.padding(.all, 5.0)
                
                
                
                HStack {
                Text("Position")
                    Spacer()
                    Text(userPosition)
                }.padding(.all, 5.0)
                
                
                
                HStack {
                Text("Phone")
                    Spacer()
                    Text(userNumber)
                }.padding(.all, 5.0)
                
                Spacer()
                
                HStack {
            
                    
                    Button {
                       print("insta button press")
                    } label: {
                        Image(systemName: "phone.circle.fill")
                    }
                    Spacer()
                    Button {
                       print("insta button press")
                    } label: {
                        Image(systemName: "phone.circle.fill")
                    }
                    Spacer()
                    Button {
                       print("insta button press")
                    } label: {
                        Image(systemName: "phone.circle.fill")
                    }
                    Spacer()
                    Button {
                       print("insta button press")
                    } label: {
                        Image(systemName: "phone.circle.fill")
                    }
                    Spacer()
                    Button {
                       print("insta button press")
                    } label: {
                        Image(systemName: "phone.circle.fill")
                    }
                   
                    
                }
                .padding(.all, 5.0)
                
            }.padding(.all, 10.0)
            
            
            
            
            
            Spacer()
            
            
        }
        
        
    }
}

struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            cardView(userImage: "stevejobs-2", userName: "Steve Jobs",
                     userDescription:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit ipsum, netus posuere massa. Nam sit malesuada velit scelerisque quis in. Quam leo, malesuada ultrices diam luctus interdum et. Molestie sed tristique purus ipsum malesuada ac.",
            userCompany: "Apple Inc.", userPosition: "I'm the CEO !!", userNumber: "123456789")
            
            cardView(userImage: "stevejobs-2", userName:"Steve Jobs",
                    userDescription:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit ipsum, netus posuere massa. Nam sit malesuada velit scelerisque quis in. Quam leo, malesuada ultrices diam luctus interdum et. Molestie sed tristique purus ipsum malesuada ac.",
                     userCompany: "Apple Inc.", userPosition: "I'm the CEO !!", userNumber: "123456789")
        }
    }
}
