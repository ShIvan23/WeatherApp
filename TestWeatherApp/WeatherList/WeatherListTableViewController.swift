//
//  WeatherListTableViewController.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

class WeatherListTableViewController: UITableViewController {
    
    private var viewModel: WeatherListViewModelProtocol! {
        didSet {
            viewModel.fetchWeather {
                self.tableView.reloadData()
            }
        }
    }
        
    // MARK: - Lyfe cyles methods
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = WeatherListViewModel()
        tableView.register(WeatherTableViewCell.nib(), forCellReuseIdentifier: WeatherTableViewCell.identifier)
        setupLayout()

    }
    
    // MARK: - Private Methods
    private func setupLayout() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        viewModel.numberOfRows()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WeatherTableViewCell.identifier, for: indexPath) as! WeatherTableViewCell

        cell.viewModel = viewModel.cellViewModel(at: indexPath)

        return cell
    }
    
}
