//
//  RequestManager.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

protocol RequestManagerProtocol {
    var header: [String : String] { get }
    func weatherRequest(city: String) -> URLRequest?
}

class RequestManager: RequestManagerProtocol {
    
   private(set) var header = ["X-Yandex-API-Key": "d93a5444-d068-4096-ba85-1699324ceb0f"]
    
    func weatherRequest(city: String) -> URLRequest? {
        
        guard let url = URL(string: "https://api.weather.yandex.ru/v2/forecast?\(city)&extra=true") else { return nil }
        
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = header
        
        return request
    }
}
