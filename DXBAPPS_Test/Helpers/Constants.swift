//
//  ThemeConstants.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

struct Theme{
    static let color = Color()
    static let fonts = Fonts()
}

struct Color{
    let primaryColor:UIColor = #colorLiteral(red: 0, green: 0.2788846528, blue: 0.384531056, alpha: 1)
    let secondaryColor:UIColor = #colorLiteral(red: 0.5523762393, green: 0.801065509, blue: 0.8848782139, alpha: 1)
    let viewBackgroundColor:UIColor = #colorLiteral(red: 0.9796730876, green: 0.9796730876, blue: 0.9796730876, alpha: 1)
}

struct Fonts{
    let midButtonFont = UIFont (name: "Helvetica Neue", size: 10)!
}

