//
//  APILineChartView.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/11/13.
//

import SwiftUI
import Charts

@available(iOS 16.0, *)
struct APILineChartView: View {
    @State private var SentimentData: [DataModel] = []
    @State private var encodeString: String = ""
    @State private var chartDataEntries: [APIChartDataEntry] = []
    //MARK: データを取得する
    func getData(string: String){
        APIClient.shared.getDegreeofSentiment(encodedWord: string) { response in
            switch response{
            case .success(let data):
                SentimentData.append(data)
                sortingData(data: data)
                break
            case .failure(let error):
                print("decodeエラー:\(error)")
                break
            }
        }
    }
    //MARK: データをグラフ用に整理
    func sortingData(data: DataModel){
        let number = SentimentData.count - 1
        let dataEntry = APIChartDataEntry(value: Double(data.negaposi), number: Double(number))
        
        chartDataEntries.append(dataEntry)
    }
    
    var body: some View {
        VStack{
            Chart(chartDataEntries){item in
                LineMark(x: .value("count", item.number), y: .value("positiveness", item.value))
                
                PointMark(x: .value("count", item.number), y: .value("positiveness", item.value))
            }
            .frame(height: 200)
            .padding()
            TextField("エンコードしたい文字列",text: $encodeString)
                .frame(width: 300, height: 40)
            Button(action: {
                self.getData(string: self.encodeString)
            }){
                Text("おす")
            }
        }
    }
}

@available(iOS 16.0, *)
struct APILineChartView_Previews: PreviewProvider {
    static var previews: some View {
        APILineChartView()
    }
}
