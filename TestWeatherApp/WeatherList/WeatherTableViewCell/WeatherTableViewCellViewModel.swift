//
//  WeatherTableViewCellViewModel.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

protocol WeatherTableViewCellViewModelProtocol {
    var cityName: String { get }
    init(weather: Weather)
}

final class WeatherTableViewCellViewModel: WeatherTableViewCellViewModelProtocol {
    
    // MARK: - Properties
    private let weather: Weather
    
    var cityName: String {
        weather.info.tzinfo.name
    }
    
    required init(weather: Weather) {
        self.weather = weather
    }
}
