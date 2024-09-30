// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import SwiftUI

struct PriceScan: Identifiable, Codable, Comparable {
  
  var id = UUID()  // To conform to Identifiable protocol
  // Additional properties, etc.
  var item: String
  var price: Double
  
  enum CodingKeys: String , CodingKey {
    case item
    case price
  }
    
//    init(item: String, price: Float, date: String) {
//            self.item = item
//            self.price = price
//            self.date = date
//        }
        
    

  
  
  
  
  
  
  
//  
//    func onDate() -> String {
//        return Helper.getShortDate(self.date)
//  }
//  
  // To conform to Comparable protocol
    func currency() -> String {
        return Helper.asCurrency(price)
      }
      
      // To conform to Comparable protocol
      static func < (lhs: PriceScan, rhs: PriceScan) -> Bool {
        lhs.item < rhs.item
      }
  
  // MARK: Example for SwiftUI
  
}

