//
//  Weather.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

struct Weather: Decodable {
    var info: Info
    var fact: Fact
    var geoObject: GeoObject
    
    private enum CodingKeys: String, CodingKey {
        case info
        case fact
        case geoObject = "geo_object"
    }
    
    struct Info: Decodable {
        var tzinfo: Tzinfo
    }
    
    struct Tzinfo: Decodable {
        var name: String
    }
    
    struct Fact: Decodable {
        var temp: Int
        var feelsLike: Int
        var condition: String
        var humidity: Int
        var icon: String
        
        private enum CodingKeys: String, CodingKey {
            case temp
            case feelsLike = "feels_like"
            case condition
            case humidity
            case icon
        }
    }
    
    struct GeoObject: Decodable {
        var locality: Locality
    }
    
    struct Locality: Decodable {
        var name: String
    }
}
