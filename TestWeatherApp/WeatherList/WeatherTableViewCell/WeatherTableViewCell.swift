//
//  WeatherTableViewCell.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    
    
    var viewModel: WeatherTableViewCellViewModelProtocol! {
            didSet {
                temperatureLabel.text = viewModel.temperature
                cityLabel.text = viewModel.cityName
                conditionLabel.text = viewModel.condition
            }
        }
}
