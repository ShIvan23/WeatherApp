//
//  WeatherTableViewCell.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    var viewModel: WeatherTableViewCellViewModelProtocol! {
        didSet {
            var context = defaultContentConfiguration()
            context.text = viewModel.cityName
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}