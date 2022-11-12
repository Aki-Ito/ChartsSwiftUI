//
//  LineChartView.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/11/12.
//

import SwiftUI
import Charts

@available(iOS 16.0, *)
struct LineChartView: View {
//    @State private var SentimentData: [ChartDataEntry] = []
//    @State private var encodeString: String = ""
//
//    func getData(string: String){
//        APIClient.shared.getDegreeofSentiment(encodedWord: string) { response in
//            switch response{
//            case .success(let data):
//
//                break
//            case .failure(let error):
//                print("decodeエラー:\(error)")
//                break
//            }
//        }
//    }
    let items: [ChartDataEntry] = [
        ChartDataEntry(type: "Engineering", value: 100),
        ChartDataEntry(type: "Processing", value: 70),
        ChartDataEntry(type: "Prototyping", value: 60),
        ChartDataEntry(type: "illustlate", value: 45),
        ChartDataEntry(type: "photo", value: 10),
    ]
    
    @available(iOS 16.0, *)
    var body: some View {
        VStack{
                Chart(items){item in
                    LineMark(x: .value("count", item.type), y: .value("positiveness", item.value))
                    
                    PointMark(x: .value("count", item.type), y: .value("positiveness", item.value))
                }
            
            .frame(height: 200)
            .padding()
//            TextField("エンコードしたい文字列",text: $encodeString)
//                .frame(width: 300, height: 40)
//            Button(action: {
//                self.getData(string: self.encodeString)
//            }){
//                Text("おす")
//            }
        }
        
    }
}

@available(iOS 16.0, *)
struct LineChartView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView()
    }
}
