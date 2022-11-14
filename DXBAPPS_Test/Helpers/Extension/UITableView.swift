//
//  UITableView.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

extension UITableView{
    func register<T: UITableViewCell>(cell:T.Type){
        register(UINib(nibName: T.identifier, bundle: nil), forCellReuseIdentifier: T.identifier)
    }
}
