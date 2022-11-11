//
//  DashboardViewControllerRouter.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class DashboardViewControllerRouter: DashboardViewControllerRouting{
    
    static func make() -> UIViewController? {
        let dashboardView = DashboardViewController.getVC(.dashboardViewController)
        let presenter = DashboardViewControllerPresenter()
        presenter.view = dashboardView
        dashboardView.presenter = presenter
        return dashboardView
    }
}
