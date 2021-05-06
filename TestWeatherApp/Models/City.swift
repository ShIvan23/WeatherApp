//
//  City.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation


struct City {
    var name: String
    var coordinates: String
}

let citiesArray = [City(name: "Москва", coordinates: "lat=55.753215&lon=37.622504"),
                   City(name: "Санкт-Петербург", coordinates: "lat=59.938951&lon=30.315635"),
                   City(name: "Екатеринбург", coordinates: "lat=56.838011&lon=60.597465"),
                   City(name: "Вашингтон", coordinates: "lat=38.899513&lon=-77.036527"),
                   City(name: "Лондон", coordinates: "lat=51.507351&lon=-0.127660"),
                   City(name: "Рим", coordinates: "lat=41.902689&lon=12.496176"),
                   City(name: "Париж", coordinates: "lat=48.856663&lon=2.351556"),
                   City(name: "Сидней", coordinates: "lat=-33.865248&lon=151.216484"),
                   City(name: "Бразилиа", coordinates: "lat=-15.802118&lon=-47.889062"),
                   City(name: "Прага", coordinates: "lat=50.080293&lon=14.428983")]
