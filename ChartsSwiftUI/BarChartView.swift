////
////  BarChartView.swift
////  ChartsSwiftUI
////
////  Created by 伊藤明孝 on 2022/07/14.
////
//
//import SwiftUI
////import Charts
//struct BarChartView: View {
//    var data: [DataModel] = [
//        .init(type: "Cube", count: 5),
//        .init(type: "Sphere", count: 4),
//        .init(type: "Pyramid", count: 4)
//    ]
//
//    @State var dataArray = [DataModel]()
//
//    func getData(){
//        APIClient.shared.getDegreeofSentiment(encodedWord: "abc") { response in
//            <#code#>
//        }
//    }
//
//
//    var body: some View{
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
////        if #available(iOS 16.0, *) {
////            Chart{
////                ForEach(data){shape in
////                    BarMark(x: .value("ShapeType", shape.type), y: .value("TotalCount", shape.count))
////                }
////            }
////        } else {
////            // Fallback on earlier versions
////        }
//    }
//}
//
//struct BarChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        BarChartView()
//    }
//}
