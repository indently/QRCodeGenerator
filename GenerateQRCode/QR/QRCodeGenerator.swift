//
//  QRCodeGenerator.swift
//  GenerateQRCode
//
//  Created by Federico on 26/02/2022.
//

import Foundation
import CoreImage.CIFilterBuiltins
import SwiftUI

struct QRCode {
   let context = CIContext()
   let qrGen = CIFilter.qrCodeGenerator()
   
   func generateQRCode(from string: String) -> Image {
      qrGen.message = Data(string.utf8)
      
      if let outputImage = qrGen.outputImage {
         if let cgImg = context.createCGImage(outputImage, from: outputImage.extent) {
            return Image(uiImage: UIImage(cgImage: cgImg))
         }
      }
      
      return Image(uiImage: UIImage(systemName: "questionmark.circle")!)
   }
   
}
