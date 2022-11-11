//
//  DashboardNavigationViewController.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class DashboardNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let vc = DashboardViewControllerRouter.make(){
            self.addChild(vc)
        }
    }
}
