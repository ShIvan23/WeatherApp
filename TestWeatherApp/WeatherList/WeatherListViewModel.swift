//
//  WeatherListViewModel.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

protocol WeatherListViewModelProtocol {
    var weather: [Weather] { get }
    func fetchWeather(completion: @escaping () -> Void)
    func numberOfRows() -> Int
    func cellViewModel(at indexPath: IndexPath) -> WeatherTableViewCellViewModelProtocol
    func viewModelForSelectedRow(at indexPath: IndexPath) -> WeatherDetailsViewModelProtocol
}

class WeatherListViewModel: WeatherListViewModelProtocol {
    
    // MARK: Properties
    var weather = [Weather]() 
    
    private let weatherManager = WeatherManger()
    
    // MARK: - Public Methods
    func fetchWeather(completion: @escaping () -> Void) {
        weatherManager.fetchWeather { [unowned self] result in
            
            switch result {
            case .success(let weather):
                let translatedWeather = ConditionTranslate.translate(weather)
                self.weather.append(translatedWeather)
                completion()
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func numberOfRows() -> Int {
        weather.count
    }
    
    func cellViewModel(at indexPath: IndexPath) -> WeatherTableViewCellViewModelProtocol {
        let weather = weather[indexPath.row]
        return WeatherTableViewCellViewModel(weather: weather)
    }
    
    func viewModelForSelectedRow(at indexPath: IndexPath) -> WeatherDetailsViewModelProtocol {
        let weather = weather[indexPath.row]
        return WeatherDetailsViewModel(weather: weather)
    }
}
