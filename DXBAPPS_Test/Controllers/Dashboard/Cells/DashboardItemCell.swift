//
//  DashboardItemCell.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class DashboardItemCell: UITableViewCell,CellConfigurable {
    var viewModel:DashboardItemModel?
    var didSelectRowCallBack: ((DashboardItemModel) -> Void)?
    
    @IBOutlet weak var containerView:UIView!
    @IBOutlet weak var titleLable:UILabel!
    @IBOutlet weak var arrowForword:UIImageView!
    @IBOutlet weak var iconImage:UIImageView!

    func configure(viewModel: DashboardItemModel) {
        self.viewModel = viewModel
        titleLable.text = viewModel.type.getTitle().uppercased()
        iconImage.image = viewModel.type.getImage()
        
        arrowForword.tintColor = viewModel.type.getArrowColor()
        containerView.layer.cornerRadius = 12
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor = viewModel.type.getBackgroundColor().cgColor
        containerView.backgroundColor = viewModel.type.getBackgroundColor()
        containerView.clipsToBounds = true
    }
}
