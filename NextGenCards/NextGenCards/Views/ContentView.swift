//
//  ContentView.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 17/03/22.
//

import SwiftUI
import CoreData
import Drawer
import CodeScanner
struct ContentView: View {
    
    
    var userList: [String: String] = ["userImage": "stevejobs-2", "userName":"Steve Jobs",
              "userDescription":  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit ipsum, netus posuere massa. Nam sit malesuada velit scelerisque quis in. Quam leo, malesuada ultrices diam luctus interdum et. Molestie sed tristique purus ipsum malesuada ac.",
               "userCompany": "Apple Inc.", "userPosition": "I'm the CEO!!", "userNumber": "123456789"]
    
    
    @State private var showCardsClicked = false // to combine q button to an external navigation Link
    
    @State private var isPresentingScanner = false
    
    @EnvironmentObject private var scannedCode: sharedData
    
    
//    private var
    
    

    
    
    
   
    

    
    var body: some View {
        
        NavigationView {
        
        VStack {
            
//            Image("Image1")
                
            headerView(isCards: true)
               
          
            
                
            Spacer()
            
           
                
            scannerView()
               
                    
                
//                Button(action: {
//                    print("show cards")
//                }) {
//                    Text("Show Cards")
//                    Image(systemName: "greetingcard.fill")
//                        .font(.system(size: 15))
//                        .foregroundColor(.blue)
//                }
//                .clipShape(Rectangle())
//                .padding(.all, 15.0)
//                .overlay(Rectangle().stroke(.blue, lineWidth: 1.5))
////                .padding(.all, 15.0)
//                .cornerRadius(250)
//                .padding(.all, 15.0)
               
            
                    
                
                

                

               
        
            Spacer()
            
            drawerView(
             
                    userImage: userList["userImage"]!, userName: userList["userName"]!,
                         userDescription:
                             userList["userDescription"]!,
                     
                         userCompany: userList["userCompany"]!,
                         
                         userPosition: userList["userPosition"]!,
                         
                         userNumber:
                             userList["userNumber"]!)
            

        
            }
        .navigationBarHidden(true) // hides the extra space for the nav bar and its title and its other contents
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    @StateObject var scannedCode = sharedData()
    static var previews: some View {
        Group {
            
            ContentView()
        }
    }
}



class sharedData: ObservableObject{
    @Published var scannedCode: String = "" // means nothing is scanned
}


