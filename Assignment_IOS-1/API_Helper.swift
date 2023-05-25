//
//  API_Helper.swift
//  Assignment_IOS-1
//
//  Created by Bikash Chhantyal on 2023-05-24.
//

import Foundation
class API_Helper{
    
    public static func fetchData(urlString: String, authToken: String? = nil , header: String?=nil) async -> Any?{
        guard let url = URL(string: urlString) else {return nil}
        
        var request = URLRequest(url: url)
        
        if let token = authToken, let headerField = header{
            request.addValue(token, forHTTPHeaderField: headerField)
        }
        
        let (data, _) = try! await URLSession.shared.data(for: request)
        let JSONObject = try! JSONSerialization.jsonObject(with: data)
        return JSONObject
    }
}
