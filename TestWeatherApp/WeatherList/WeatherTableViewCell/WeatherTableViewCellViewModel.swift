//
//  WeatherTableViewCellViewModel.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

protocol WeatherTableViewCellViewModelProtocol {
    var cityName: String { get }
    var condition: String { get }
    var temperature: String { get }
    init(weather: Weather)
}

final class WeatherTableViewCellViewModel: WeatherTableViewCellViewModelProtocol {
    
    // MARK: - Properties
    private let weather: Weather
    
    var cityName: String {
        weather.geoObject.locality.name
    }
    
    var condition: String {
        weather.fact.condition
    }
    
    var temperature: String {
        "\(weather.fact.temp)°C"
    }
    
    // MARK: - Initializers
    required init(weather: Weather) {
        self.weather = weather
    }
}
