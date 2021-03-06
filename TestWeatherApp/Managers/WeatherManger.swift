//
//  WeatherManger.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation

final class WeatherManger {
    
    private let apiManager: APIManagerProtocol = APIMagager()
    private let requestManager: RequestManagerProtocol = RequestManager()
    private let citiesArray = Cities.shared.citiesArray
    
    func fetchWeather(completion: @escaping (Result<Weather, Error>) -> Void) {
        citiesArray.forEach { city in
            guard let request = requestManager.weatherRequest(latitude: city.latitude, longitude: city.longitude) else { return }
            apiManager.fetch(request: request, completionHandler: completion)
        }
    }
    
}
