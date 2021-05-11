//
//  City.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation


struct City {
    var name: String
    var latitude: String
    var longitude: String
}

class Cities {
    
    static let shared = Cities()
    
    private init() {}
    
    let citiesArray = [City(name: "Москва", latitude: "55.753215", longitude: "37.622504"),
                       City(name: "Санкт-Петербург", latitude: "59.938951", longitude: "30.315635"),
                       City(name: "Екатеринбург", latitude: "56.838011", longitude: "60.597465"),
                       City(name: "Вашингтон", latitude: "38.899513", longitude: "-77.036527"),
                       City(name: "Лондон", latitude: "51.507351", longitude: "-0.127660"),
                       City(name: "Рим", latitude: "41.902689", longitude: "12.496176"),
                       City(name: "Париж", latitude: "48.856663", longitude: "2.351556"),
                       City(name: "Сидней", latitude: "-33.865248", longitude: "151.216484"),
                       City(name: "Бразилиа", latitude: "-15.802118", longitude: "-47.889062"),
                       City(name: "Прага", latitude: "50.080293", longitude: "14.428983"),
                       City(name: "Минск", latitude: "53.902156", longitude: "27.561247"),
                       City(name: "Каир", latitude: "30.051434", longitude: "31.245384")]
    
}
