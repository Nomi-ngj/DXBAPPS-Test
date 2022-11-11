//
//  TabbarControllerPresenter.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class TabbarControllerPresenter:TabbarControllerPresenting{
    
    var view: TabbarControllerDisplaying?
    var childrens: [UIViewController]? = []
    
    func viewDidLoad() {
        self.addChildrens()
    }
    
    private func addChildrens(){
        view?.setupUI()
    }
}
