//
//  ListView.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/07/25.
//

import SwiftUI

struct ListView: View {
    @State private var dataModel = [DataModel]()
    @State private var encodeString: String = ""
    func getData(string: String){
        APIClient.shared.getDegreeofSentiment(encodedWord: string) { response in
            switch response{
            case .success(let data):
                self.dataModel.append(data)
                break
            case .failure(let error):
                print("decodeエラー:\(error)")
                break
            }
        }
    }
    var body: some View {
        VStack{
            List{
                ForEach(dataModel){data in
                    Text(String(data.negaposi))
                }
            }.frame(width: 400, height: 600)
            
            TextField("エンコードしたい文字列",text: $encodeString)
                .frame(width: 300, height: 24)
            Button(action: {
                self.getData(string: self.encodeString)
            }){
                Text("おす")
            }

        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
