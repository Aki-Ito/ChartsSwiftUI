//
//  ListView.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/07/25.
//

import SwiftUI

struct ListView: View {
    @State private var dataModel = [DataModel]()
    func getData(){
        APIClient.shared.getDegreeofSentiment(encodedWord: "abc") { response in
            switch response{
            case .success(let data):
                print(data)
                break
            case .failure(let error):
                print("decodeエラー:\(error)")
                break
            }
        }
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
