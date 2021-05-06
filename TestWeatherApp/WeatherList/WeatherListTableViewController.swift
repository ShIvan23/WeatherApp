//
//  WeatherListTableViewController.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

class WeatherListTableViewController: UITableViewController {
    
    // MARK: - IB outlet
    @IBOutlet weak var searchBar: UISearchBar!
    
    // MARK: - Properties
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
    
    // MARK: - Private methods
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
        let cell = tableView.dequeueReusableCell(withIdentifier: WeatherTableViewCell.identifier,
                                                 for: indexPath) as! WeatherTableViewCell

        cell.viewModel = viewModel.cellViewModel(at: indexPath)

        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailsViewModel = viewModel.viewModelForSelectedRow(at: indexPath)
        let detailsViewController = WeatherDetailsViewController(nibName: WeatherDetailsViewController.nibString,
                                                                 bundle: nil,
                                                                 viewModel: detailsViewModel)
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
