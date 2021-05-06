//
//  WeatherTableViewCellViewModel.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

protocol WeatherTableViewCellViewModelProtocol {
    init(weather: Weather)
}

final class WeatherTableViewCellViewModel: WeatherTableViewCellViewModelProtocol {
    
    // MARK: - Properties
    private let weather: Weather
    
    required init(weather: Weather) {
        self.weather = weather
    }
}
