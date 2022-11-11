//
//  DashboardViewControllerPresenter.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class DashboardViewControllerPresenter: DashboardViewControllerPresenting{
    
    var view: DashboardViewControllerDisplaying?
    var items: [DashboardItemModel] = []

    func viewDidLoad() {
        view?.setupUI()
        self.addItems()
    }
    
    private func addItems(){
        
        items.append(DashboardItemModel(type: .order))
        items.append(DashboardItemModel(type: .howItWork))
        items.append(DashboardItemModel(type: .aboutUs))
        items.append(DashboardItemModel(type: .contactUs))

        view?.reloadData()
    }
    
    func numberOfSections() -> Int {
        return items.count
    }
    
    func numberOfRow(in section: Int) -> Int {
        return DashboardConstant.numberOfRows
    }
    
    func rowHeight(with tableView: UITableView) -> CGFloat {
        return (tableView.frame.height/4) - DashboardConstant.footerHeight
    }
    
    func heightForFooterView() -> CGFloat {
        return DashboardConstant.footerHeight
    }
    
    func footerView() -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = DashboardConstant.footerColor
        return footerView
    }
    
    func item(for indexPath: IndexPath) -> RowConfigurable? {
        return TableRowConfigurator<DashboardItemCell,DashboardItemModel>(cellViewModel: items[indexPath.section])
    }
}

struct DashboardConstant{
    static let numberOfRows = 1
    static let footerHeight:CGFloat = 8
    static let footerColor = Theme.color.viewBackgroundColor
    
    static let order = "Order"
    static let howItWork = "How it works"
    static let aboutUs = "About Us"
    static let contactUs = "Contact Us"
}
