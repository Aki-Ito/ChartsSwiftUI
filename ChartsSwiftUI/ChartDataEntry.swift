//
//  ChartDataEntry.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/11/13.
//

import Foundation
struct ChartDataEntry: Identifiable{
    let type: String
    let value: Double
    var id = UUID()
}

struct APIChartDataEntry: Identifiable{
    let value: Double
    let number: Double
    var id = UUID()
}
