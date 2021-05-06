//
//  WeatherDetailsViewController.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

class WeatherDetailsViewController: UIViewController {
    
    // MARK: - IB outlets
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    
    
    // MARK: - Properties
    var viewModel: WeatherDetailsViewModelProtocol
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?, viewModel: WeatherDetailsViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycles methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: - Private methods
    private func setupUI() {
        cityLabel.text = viewModel.cityName
        conditionLabel.text = viewModel.condition
        temperatureLabel.text = viewModel.temperature
        feelsLikeLabel.text = viewModel.feelsLike
        humidityLabel.text = viewModel.humidity
    }
}
