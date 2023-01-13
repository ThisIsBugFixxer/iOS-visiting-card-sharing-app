//
//  qrCodeScanner.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 17/03/22.
//

import Foundation
import CodeScanner
import SwiftUI

struct QRCodeScannerExampleView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String = "Scan a QR Code to get started"
    
    
    
    
    var scannerSheet : some View {
        CodeScannerView(codeTypes: [.qr], completion: {
            result in
            if case let .success(code) = result {
                self.scannedCode = code.string
                self.isPresentingScanner = false
            }
        })
    }

    var body: some View {
        VStack(spacing: 10) {
            Text(scannedCode)
            
            Button("Scan Code") {
                isPresentingScanner = true
            }
            .sheet(isPresented: $isPresentingScanner) {
                self.scannerSheet
            }
            Text("Scan a QR code to begin")
        }
    }
}
