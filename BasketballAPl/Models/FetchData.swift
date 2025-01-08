//
//  FetchData.swift
//  BasketballAPl
//
//  Created by Esan Yi (student LM) on 1/2/25.
//

import SwiftUI

struct FetchData {
    var jsonData: String = ""
    var response: Result = Result()
    let call = "https://v1.basketball.api-sports.io/players?search=James"
    
    
    mutating func getData() async {
        var request = URLRequest(url: URL(string: call)!,timeoutInterval: Double.infinity)
        request.addValue("b1cacf6d6c0f6a8586ba35f74d8d1da3", forHTTPHeaderField: "x-apisports-key")
        request.addValue("v1.basketball.api-sports.io", forHTTPHeaderField: "x-rapidapi-host")
        request.httpMethod = "GET"
        
        guard let (data, _) = try? await URLSession.shared.data(for: request) else {return}
        let dataString = String(data: data, encoding: .utf8)
        jsonData = dataString ?? "nothing"
        var r: Result = Result()
        do {
            r = try JSONDecoder().decode(Result.self, from: data)
            print("Got successfull response: \(r)")
        }
        catch{
            print("Error fetching data: \(error)")
        }
        response = r
    }
}

struct Result: Codable {
    var get: String = ""
    var results: Int = 0
    var response: [Response] = []
  
}

struct Response: Codable {
    var name: String?
    var logo: String?
    var flag: String?
    var number: Int?
}

extension Response: Identifiable {
    var id: String {name ?? " "}
}
