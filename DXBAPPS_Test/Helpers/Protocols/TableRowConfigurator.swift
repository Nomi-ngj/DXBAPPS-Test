//
//  TableRowConfigurator.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

protocol CellConfigurable{
    associatedtype CellViewModel
    func configure(viewModel:CellViewModel)
    var didSelectRowCallBack:((CellViewModel) -> Void)? {get set}
}

protocol RowConfigurable{
    var reuseIdentifier:String {get}
    var backgroundColor:UIColor {get set}
    
    func configure(cell:UIView)
    func didSelectRow(cell:UIView)
}

class TableRowConfigurator<CellType: CellConfigurable, CellViewModel>: RowConfigurable where CellType.CellViewModel == CellViewModel, CellType:UITableViewCell{
    var reuseIdentifier: String = CellType.identifier
    var backgroundColor: UIColor = .white
    let cellViewModel: CellViewModel
    
    init(cellViewModel:CellViewModel){
        self.cellViewModel = cellViewModel
    }
    
    func configure(cell: UIView) {
        if let cell = cell as? CellType{
            cell.configure(viewModel: cellViewModel)
        }
    }
    
    func didSelectRow(cell: UIView) {
        if let cell = cell as? CellType,
           let callBack = cell.didSelectRowCallBack{
            callBack(cellViewModel)
        }
    }
}
