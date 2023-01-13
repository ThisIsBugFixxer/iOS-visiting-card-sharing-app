//
//  drawerView.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 26/03/22.
//

import SwiftUI
import Drawer

struct drawerView: View {
    
    
    
    var userImage: String
    var userName: String
 
    var userDescription: String
    
    var userCompany: String
    
    var userPosition: String
    
    var userNumber: String
    
    
    
    
    
    @EnvironmentObject private var scannedCode: sharedData
    
    var body: some View {
        Drawer {
            ZStack {
                
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                    .shadow(radius: 100)
                
                VStack(alignment: .center) {
                    Spacer().frame(height: 4.0)
                    RoundedRectangle(cornerRadius: 3.0)
                        .foregroundColor(.gray)
                        .frame(width: 30.0, height: 6.0)
                    Spacer()
                    
                    
                    
                    // CONTENT GOES HERE
                    
                    
                    
                    

                    Spacer()
                    
                    
                    Text("Data is \(scannedCode.scannedCode)")
                        .foregroundColor(.orange)
                        .underline(true, color: .blue)
                        .overlay(Rectangle().stroke(.purple, lineWidth: 5.0))
                    
                    Spacer()
                   
                    // User QR CODE
//
                   VStack {

                    Image("qrCodeExample-1")
                            .padding(.all, 5.0)


                    }




//                        .padding(.all,5.0)
                    .clipShape(Circle())
                    .padding(.all, 15.0)
                    .overlay(Circle().stroke(.orange, lineWidth: 5))
                    .shadow(radius: 5)
                    .padding(.all, 15.0)
                    
                    
                    // USER CARD
                    CardSmallView(userImage: "stevejobs-2", userName:"Steve Jobs",
                             userDescription:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit ipsum, netus posuere massa. Nam sit malesuada velit scelerisque quis in. Quam leo, malesuada ultrices diam luctus interdum et. Molestie sed tristique purus ipsum malesuada ac.",
                              userCompany: "Apple Inc.", userPosition: "I'm the CEO !!", userNumber: "123456789")
                    .padding(.all, 15.0)
                    
                    Spacer()
//                    VStack {
//
//                        Text("Name: \(userName)")
//                            .padding([.top, .leading, .trailing], 10.0)
//                            .padding(.bottom, 1.0)
//                            .font(.largeTitle)
//                            .multilineTextAlignment(.center)
//                        Text(userNumber)
//                            .font(.caption)
//                            .fontWeight(.semibold)
//                            .multilineTextAlignment(.center)
//                            .padding(.bottom, 10.0)
//
//                        Text( "\(userPosition) at \(userCompany)" )
//                            .font(.title2)
//                            .fontWeight(.semibold)
//                            .multilineTextAlignment(.center)
//                            .padding(.all, 3.0)
//
//                        Text( userDescription )
//                            .font(.title2)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//                            .padding(.all, 3.0)
//
//                        Text("twitter: yesHeIsIronMan")
//                            .font(.caption)
//                            .fontWeight(.semibold)
//                            .multilineTextAlignment(.center)
//                            .padding(.all, 3.0)
//                        Text("YesHeIsAwesome")
//                            .font(.caption)
//                            .fontWeight(.semibold)
//                            .multilineTextAlignment(.center)
//                        //    .padding(.all, 3.0)
//
//                    }
//                    .clipShape(Rectangle())
//                    .overlay(Rectangle().stroke(.gray, lineWidth: 5))
//                    .padding(.all, 15.0)
                }
                .padding(.bottom, 50.0)
                    
                
            }
        }
        .rest(at: .constant([100, 340, UIScreen.main.bounds.height - 250]))
        .impact(.light)
    }
}

struct drawerView_Previews: PreviewProvider {
    static var previews: some View {
        drawerView(userImage: "stevejobs-2", userName:"Steve Jobs",
                   userDescription:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit ipsum, netus posuere massa. Nam sit malesuada velit scelerisque quis in. Quam leo, malesuada ultrices diam luctus interdum et. Molestie sed tristique purus ipsum malesuada ac.",
                    userCompany: "Apple Inc.", userPosition: "I'm the CEO Bitch!!", userNumber: "123456789")
    }
}

//Text("Name: \(userName)")
//    .padding([.top, .leading, .trailing], 10.0)
//    .padding(.bottom, 1.0)
//    .font(.largeTitle)
//    .multilineTextAlignment(.center)
//Text(userNumber)
//    .font(.caption)
//    .fontWeight(.semibold)
//    .multilineTextAlignment(.center)
//    .padding(.bottom, 10.0)
//
//Text( "\(userPosition) at \(userCompany)" )
//    .font(.title2)
//    .fontWeight(.semibold)
//    .multilineTextAlignment(.center)
//    .padding(.all, 3.0)
//
//Text( userDescription )
//    .font(.title2)
//    .fontWeight(.thin)
//    .multilineTextAlignment(.center)
//    .padding(.all, 3.0)
//
//Text("twitter: yesHeIsIronMan")
//    .font(.caption)
//    .fontWeight(.semibold)
//    .multilineTextAlignment(.center)
//    .padding(.all, 3.0)
//Text("YesHeIsAwesome")
//    .font(.caption)
//    .fontWeight(.semibold)
//    .multilineTextAlignment(.center)
////    .padding(.all, 3.0)
