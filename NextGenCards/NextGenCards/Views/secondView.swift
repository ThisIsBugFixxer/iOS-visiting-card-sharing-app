//
//  secondView.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 23/03/22.
//

import Foundation

import SwiftUI

struct secondView: View {
    
//    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    
    var userList: [String: String] = ["userImage": "stevejobs-2", "userName":"Steve Jobs",
              "userDescription":  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit ipsum, netus posuere massa. Nam sit malesuada velit scelerisque quis in. Quam leo, malesuada ultrices diam luctus interdum et. Molestie sed tristique purus ipsum malesuada ac.",
               "userCompany": "Apple Inc.", "userPosition": "I'm the CEO !!", "userNumber": "123456789"]
    
    @State private var showFullSheet: Bool = false
    
    var body: some View {
        NavigationView {
        VStack {
//            headerView(isCards: false)
        ScrollView() {
//            LazyVGrid(columns: threeColumnGrid) {
            CardSmallView(userImage: userList["userImage"]!, userName: userList["userName"]!,
                          userDescription:
                              userList["userDescription"]!,
                      
                          userCompany: userList["userCompany"]!,
                          
                          userPosition: userList["userPosition"]!,
                          
                          userNumber:
                              userList["userNumber"]!)
                
                
            Spacer()
                CardSmallView(userImage: userList["userImage"]!, userName: userList["userName"]!,
                              userDescription:
                                  userList["userDescription"]!,
                          
                              userCompany: userList["userCompany"]!,
                              
                              userPosition: userList["userPosition"]!,
                              
                              userNumber:
                                  userList["userNumber"]!)
               
                Spacer()
                CardSmallView(userImage: userList["userImage"]!, userName: userList["userName"]!,
                              userDescription:
                                  userList["userDescription"]!,
                          
                              userCompany: userList["userCompany"]!,
                              
                              userPosition: userList["userPosition"]!,
                              
                              userNumber:
                                  userList["userNumber"]!)
                
                Spacer()
                CardSmallView(userImage: userList["userImage"]!, userName: userList["userName"]!,
                              userDescription:
                                  userList["userDescription"]!,
                          
                              userCompany: userList["userCompany"]!,
                              
                              userPosition: userList["userPosition"]!,
                              
                              userNumber:
                                  userList["userNumber"]!) .onTapGesture {
                    showFullSheet = true
                }
               
                Spacer()
                CardSmallView(userImage: userList["userImage"]!, userName: userList["userName"]!,
                              userDescription:
                                  userList["userDescription"]!,
                          
                              userCompany: userList["userCompany"]!,
                              
                              userPosition: userList["userPosition"]!,
                              
                              userNumber:
                                  userList["userNumber"]!)
                
                Spacer()
            
            
            }
        .navigationBarHidden(true)
            
        }
        
    }
    }
    
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
