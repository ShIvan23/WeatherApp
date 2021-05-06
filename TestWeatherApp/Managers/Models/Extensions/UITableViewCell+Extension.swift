//
//  UITableViewCell+Extension.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

protocol IdentifierTableViewCellProtocol {
    static var identifier: String { get }
}

extension UITableViewCell: IdentifierTableViewCellProtocol {
    
    static var identifier: String {
        String(describing: Self.self)
    }
}
