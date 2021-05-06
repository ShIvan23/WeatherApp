//
//  ConditionTranslate.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import Foundation


class ConditionTranslate {
    
    enum Condition: String {
        case clear
        case partlyCloudy = "partly-cloudy"
        case cloudy
        case overcast
        case drizzle
        case lightRain = "light-rain"
        case rain
        case moderateRain = "moderate-rain"
        case heavyRain = "heavy-rain"
        case continuousHeavyRain = "continuous-heavy-rain"
        case showers
        case wetSnow = "wet-snow"
        case lightSnow = "light-snow"
        case snow
        case snowShowers = "snow-showers"
        case hail
        case thunderstorm
        case thunderstormWithRain = "thunderstorm-with-rain"
        case thunderstormWithHail = "thunderstorm-with-hail"
    }
    
    static func translate(_ weather: Weather) -> Weather {
        
        var myWeathe = weather
        let condition = Condition(rawValue: weather.fact.condition)
        
        switch condition {
        case .clear:
            myWeathe.fact.condition = "Ясно"
        case .partlyCloudy:
            myWeathe.fact.condition = "Малооблачно"
        case .cloudy:
            myWeathe.fact.condition = "облачно с прояснениями"
        case .overcast:
            myWeathe.fact.condition = "пасмурно"
        case .drizzle:
            myWeathe.fact.condition = "Мелкий дождь"
        case .lightRain:
            myWeathe.fact.condition = "Небольшой дождь"
        case .rain:
            myWeathe.fact.condition = "Дождь"
        case .moderateRain:
            myWeathe.fact.condition = "Умеренно сильный дождь"
        case .heavyRain:
            myWeathe.fact.condition = "Сильный дождь"
        case .continuousHeavyRain:
            myWeathe.fact.condition = "Длительный сильный дождь"
        case .showers:
            myWeathe.fact.condition = "Ливень"
        case .wetSnow:
            myWeathe.fact.condition = "Дождь со снегом"
        case .lightSnow:
            myWeathe.fact.condition = "Небольшой снег"
        case .snow:
            myWeathe.fact.condition = "Снег"
        case .snowShowers:
            myWeathe.fact.condition = "Снегопад"
        case .hail:
            myWeathe.fact.condition = "Град"
        case .thunderstorm:
            myWeathe.fact.condition = "Гроза"
        case .thunderstormWithRain:
            myWeathe.fact.condition = "Дождь с грозой"
        case .thunderstormWithHail:
            myWeathe.fact.condition = "Гроза с градом"
        default:
            myWeathe.fact.condition = "Погодные условия не известны"
        }
        return myWeathe
    }
}
