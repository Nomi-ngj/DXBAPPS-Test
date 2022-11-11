//
//  TabbarControllerRouter.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class TabbarControllerRouter:TabbarControllerRouting{
    
    static func make() -> UIViewController? {
        let tabbarController = TabbarController.getVC(.tabbarController)
        let presenter = TabbarControllerPresenter()
        presenter.view = tabbarController
        tabbarController.presenter = presenter
        return tabbarController
    }
}
