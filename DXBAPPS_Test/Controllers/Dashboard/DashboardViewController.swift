//
//  DashboardViewController.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class DashboardViewController: UIViewController, DashboardViewControllerDisplaying {
    
    @IBOutlet weak var tableView:UITableView!
    
    var presenter: DashboardViewControllerPresenting!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }
    
    func setupUI() {
        setupTableViewUI()
    }
    
    func reloadData(){
        self.tableView.reloadData()
    }
    
    
    private func setupTableViewUI(){
        self.view.backgroundColor = Theme.color.viewBackgroundColor
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(cell: DashboardItemCell.self)
    }
    
    private func tableCell(for row:RowConfigurable, indexPath:IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: row.reuseIdentifier, for: indexPath)
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        
        row.configure(cell: cell)
        
        if let cellInformation = cell as? DashboardItemCell{
            cellInformation.layoutIfNeeded()
            return cellInformation
        }
        
        return UITableViewCell()
    }

}

extension DashboardViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRow(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: DashboardItemCell.identifier, for: indexPath) as! DashboardItemCell
//        cell.containerView.backgroundColor = Theme.color.secondaryColor
//        return cell
        guard let row = presenter.item(for: indexPath) else {
            return UITableViewCell()
        }
        return tableCell(for: row, indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return presenter.rowHeight(with: tableView)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return presenter.footerView()
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return presenter.heightForFooterView()
    }
}
