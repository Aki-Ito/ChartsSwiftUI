//
//  APIClient.swift
//  ChartsSwiftUI
//
//  Created by 伊藤明孝 on 2022/07/24.
//

import Foundation
import Alamofire
struct APIClient{
    static let shared = APIClient()
    fileprivate let apiKey = "5C4A43812C0FBB5E2FA9F5D63DE2D8C864A96638"
    let format = "json"
    func getDegreeofSentiment(encodedWord: String){
        let url: String = "http://ap.mextractr.net/ma9/negaposi_analyzer?out=\(format)&apikey=\(apiKey)&text=\(encodedWord)"
        AF.request(url)
            .responseDecodable(of: DataModel.self) { response in
                switch response.result{
                case .success:
                    guard let data = response.data else {
                        return
                    }
                    do {
                        let sentiments = try JSONDecoder().decode([DataModel].self, from: data)
                    } catch {
                        print("decode error")
                    }
                case .failure:
                    print("error")
                }

            }
    }
}
