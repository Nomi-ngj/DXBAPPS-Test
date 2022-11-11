//
//  DashboardViewControllerContracts.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

protocol DashboardViewControllerDisplaying: AnyObject{
    var presenter: DashboardViewControllerPresenting! {get set}
    func setupUI()
    func reloadData()
}

protocol DashboardViewControllerPresenting:AnyObject{
    var view:DashboardViewControllerDisplaying? {get set}
    var items:[DashboardItemModel] {get}
    func viewDidLoad()
    
    //TableView
    func numberOfSections()->Int
    func numberOfRow(in section:Int)->Int
    func rowHeight(with tableView:UITableView) -> CGFloat
    func heightForFooterView() -> CGFloat
    func footerView() -> UIView?
    func item(for indexPath:IndexPath) -> RowConfigurable?
}

protocol DashboardViewControllerRouting:AnyObject{
    static func make() -> UIViewController?
}
