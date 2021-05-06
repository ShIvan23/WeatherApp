//
//  WeatherDetailsViewModel.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation


protocol WeatherDetailsViewModelProtocol {
    init(weather: Weather)
    var cityName: String { get }
    var condition: String { get }
    var temperature: String { get }
    var feelsLike: String { get }
    var humidity: String { get }
}

final class WeatherDetailsViewModel: WeatherDetailsViewModelProtocol {
   
    // MARK: - Properties
    let weather: Weather
    
    required init(weather: Weather) {
        self.weather = weather
    }
    
    var cityName: String {
        weather.geoObject.locality.name
    }
    
    var condition: String {
        weather.fact.condition
    }
    
    var temperature: String {
        "\(weather.fact.temp)°C"
    }
    
    var feelsLike: String {
       "Ощущается как \(weather.fact.feelsLike)°C"
    }
    
    var humidity: String {
        "Влажность воздуха \(weather.fact.humidity)%"
    }
}
