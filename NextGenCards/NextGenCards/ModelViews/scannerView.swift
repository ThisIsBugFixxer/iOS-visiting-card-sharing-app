//
//  scannerView.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 26/03/22.
//

import SwiftUI
import CodeScanner

struct scannerView: View {
    @State private var isPresentingScanner = false
    
    @EnvironmentObject private var scannedCode: sharedData
    
    
    
    
    // ---------- UNCOMMENT FOR THE BUTTON CAMERA SCANNER INTERFACE ------------------------
    //    var scannerSheet : some View {
    //        CodeScannerView(codeTypes: [.qr], completion: {
    //            result in
    //            if case let .success(code) = result {
    //                self.scannedCode = code.string
    //                self.isPresentingScanner = false
    //            }
    //        })
    //    }

        
    // ---------------------------------------------------


    var body: some View {
        // ---------- UNCOMMENT FOR THE BUTTON CAMERA SCANNER INTERFACE ------------------------
                        
        //                Button  {
        //
        //                    isPresentingScanner = true
        //                } label : {
        //                    Image(systemName:"camera.circle.fill")
        //                        .aspectRatio(contentMode: .fill)
        //                        .foregroundColor(.blue)
        //                        .padding(.all, 50.0)
        //                        .font(.system(size: 60))
        //                        .overlay(Circle().stroke(.blue, lineWidth: 5))
        //                        .padding(.all, 45)
        //                        .overlay(Circle().stroke(.blue, lineWidth: 5))
        //                        .padding(.all, 35)
        //                        .overlay(Circle().stroke(.blue, lineWidth: 5))
        //
        //
        //
        //                }
        //                .padding(.all, 3.0)
                    
                    

                
                    
        //                .sheet(isPresented: $isPresentingScanner) {
        //                    self.scannerSheet
        //
        //                }.padding(.all, 35)
        //

        // ---------------------------------------------------

        // ---------- ALWAYS ON  CAMERA SCANNER INTERFACE ------------------------
                    
                    VStack {
                        
                    
                    CodeScannerView(codeTypes: [.qr], completion: {
                        result in
                        if case let .success(code) = result {
                            self.scannedCode.scannedCode = code.string
                            self.isPresentingScanner = false
                        }
                    })
                    .clipShape(Circle()) // to change the camera view's shape from rectangle to circle to mix the UI Design
                    
                    .overlay(Circle().stroke(.blue, lineWidth: 5))
                    .padding(.all, 35.0)
                                            .overlay(Circle().stroke(.blue, lineWidth: 5))
                                            .padding(.all, 35.0)
                                                                    .overlay(Circle().stroke(.blue, lineWidth: 5))
                                                                    
                    }
                    
        //            .padding(.top, 100.0)
        // ---------------------------------------------------
    }
}

struct scannerView_Previews: PreviewProvider {
    static var previews: some View {
        scannerView()
    }
}
