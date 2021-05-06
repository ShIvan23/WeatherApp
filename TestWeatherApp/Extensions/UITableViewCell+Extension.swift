//
//  UITableViewCell+Extension.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit

protocol NibTableViewCell {
    static var identifier: String { get }
}

extension UITableViewCell: NibTableViewCell {
    
    static var identifier: String {
        String(describing: Self.self)
    }
        
    static func nib() -> UINib {
        UINib(nibName: identifier, bundle: nil)
    }
}
