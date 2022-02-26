//
//  ContentView.swift
//  GenerateQRCode
//
//  Created by Federico on 26/02/2022.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct ContentView: View {
   private var qrGen = QRCode()
   @State private var text = ""
   
   var body: some View {
      VStack {
         ZStack {
            Color.red
            qrGen.generateQRCode(from: "\(text)")
               .interpolation(.none)
               .resizable()
               .scaledToFit()
               .frame(width: 300, height: 300)
               .foregroundColor(.white)
               .cornerRadius(20)
         }
         .cornerRadius(20)
         .frame(width: 320, height: 320)
         
         TextField("Enter some text", text: $text)
            .textFieldStyle(.roundedBorder)
            .frame(width: 300)
            .padding()
      }
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
