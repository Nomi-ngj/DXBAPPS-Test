//
//  TabbarControllerContracts.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

protocol TabbarControllerDisplaying: AnyObject{
    var presenter: TabbarControllerPresenting? {get set}
    func setupUI()
}

protocol TabbarControllerPresenting:AnyObject{
    var view:TabbarControllerDisplaying? {get set}
    var childrens:[UIViewController]? {get}
    func viewDidLoad()
}

protocol TabbarControllerRouting:AnyObject{
    static func make() -> UIViewController?
}
