//
//  StoryboardType.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

enum StoryboardType: String {
    case tabbarController = "TabbarController"
    case dashboardViewController = "DashboardViewController"

    var myStoryboard: UIStoryboard {
        return UIStoryboard(name: rawValue, bundle: Bundle.main)
    }
}
