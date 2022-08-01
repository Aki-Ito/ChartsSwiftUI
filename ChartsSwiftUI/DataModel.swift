//
//  DataModel.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/07/14.
//

import Foundation
class DataModel: Codable,Identifiable{
    
    var negaposi: Int
    var analyzedText: String
    
    init(negaposi: Int, analyzedText: String) {
        self.negaposi = negaposi
        self.analyzedText = analyzedText
    }
    
    enum CodingKeys: String, CodingKey {
        case negaposi = "negaposi"
        case analyzedText = "analyzed_text"
      }
}
