//
//  UIViewController+Extension.swift
//  TestWeatherApp
//
//  Created by Ivan on 06.05.2021.
//

import UIKit


protocol NibViewController{
    static var nibString: String { get }
}

extension UIViewController: NibViewController {
    
    static var nibString: String {
        String(describing: Self.self)
    }
}
