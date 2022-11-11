//
//  DashboardItemModel.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 12/11/2022.
//

import UIKit

struct DashboardItemModel{
    let type:DashboardItemTypes
}

enum DashboardItemTypes:CaseIterable{
    case order
    case howItWork
    case aboutUs
    case contactUs
    
    func getTitle() -> String{
        
        switch self {
        case .order:
            return DashboardConstant.order
        case .howItWork:
            return DashboardConstant.howItWork
        case .aboutUs:
            return DashboardConstant.aboutUs
        case .contactUs:
            return DashboardConstant.contactUs
        }
    }
    
    func getImage() -> UIImage?{
        switch self {
        case .order:
            return #imageLiteral(resourceName: "item_order")
        case .howItWork:
            return #imageLiteral(resourceName: "item_howItWorks")
        case .aboutUs:
            return #imageLiteral(resourceName: "item_aboutUs")
        case .contactUs:
            return #imageLiteral(resourceName: "item_contactUs")
        }
    }
    
    func getBackgroundColor() -> UIColor{
        switch self {
        case .order, .aboutUs:
            return Theme.color.secondaryColor
        case .howItWork, .contactUs:
            return Theme.color.primaryColor
        }
    }
    
    func getArrowColor() -> UIColor{
        switch self {
        case .order, .aboutUs:
            return Theme.color.primaryColor
        case .howItWork, .contactUs:
            return Theme.color.secondaryColor
        }
    }
}
