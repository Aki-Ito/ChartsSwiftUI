//
//  ChartsSwiftUIApp.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/06/16.
//

import SwiftUI

@available(iOS 16.0, *)
@main
struct ChartsSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            APILineChartView()
        }
    }
}
