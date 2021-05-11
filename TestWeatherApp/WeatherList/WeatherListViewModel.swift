//
//  WeatherListViewModel.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

protocol WeatherListViewModelProtocol {
    var weather: [Weather] { get }
    var searchText: String? { get }
    var searchTextDidChanhed: (() -> Void)? { get set }
    var isFiltering: Bool { get }
    func fetchWeather(completion: @escaping () -> Void)
    func numberOfRows() -> Int
    func cellViewModel(at indexPath: IndexPath) -> WeatherTableViewCellViewModelProtocol
    func viewModelForSelectedRow(at indexPath: IndexPath) -> WeatherDetailsViewModelProtocol
    func searchCity(_ city: String)
}

class WeatherListViewModel: WeatherListViewModelProtocol {
    
    // MARK: Properties
    var weather = [Weather]()
    
    var searchText: String? {
        didSet{
            searchTextDidChanhed?()
        }
    }
    
    var searchTextDidChanhed: (() -> Void)?
    
    var isFiltering: Bool {
        guard let searchText = searchText, !searchText.isEmpty else { return false }
        return true
    }
    
    private let weatherManager = WeatherManger()
    
    // MARK: - Methods
    func fetchWeather(completion: @escaping () -> Void) {
        weatherManager.fetchWeather { [unowned self] result in
            
            switch result {
            case .success(let weather):
                let translatedWeather = ConditionTranslate.translate(weather)
                self.weather.append(translatedWeather)
                self.weather.sort { $0.geoObject.locality.name < $1.geoObject.locality.name }
                completion()
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func numberOfRows() -> Int {
        if isFiltering {
            return filterCities().count
        }
        return weather.count
    }
    
    func cellViewModel(at indexPath: IndexPath) -> WeatherTableViewCellViewModelProtocol {
        if isFiltering {
            let weather = filterCities()[indexPath.row]
            return WeatherTableViewCellViewModel(weather: weather)
        }
        let weather = weather[indexPath.row]
        return WeatherTableViewCellViewModel(weather: weather)
    }
    
    func viewModelForSelectedRow(at indexPath: IndexPath) -> WeatherDetailsViewModelProtocol {
        if isFiltering {
            let weather = filterCities()[indexPath.row]
            return WeatherDetailsViewModel(weather: weather)
        }
        let weather = weather[indexPath.row]
        return WeatherDetailsViewModel(weather: weather)
    }
    
    func searchCity(_ city: String) {
        searchText = city
    }
    
    private func filterCities() -> [Weather] {
        let filteredArray = weather.filter {
            $0.geoObject.locality.name
                .lowercased()
                .contains(searchText!.lowercased())
        }
        
        return filteredArray
    }
}
