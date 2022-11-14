//
//  UIViewController.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

extension UIViewController : StoryboardTypeConsuming {
    
    static func getVC(_ storyBoard: StoryboardType) -> Self {
        func instanceFromNib<T: UIViewController>(_ storyBoard: StoryboardType) -> T {
            guard let vc = storyBoard.myStoryboard.instantiateViewController(withIdentifier: T.identifier) as? T else {
                fatalError("'\(storyBoard.rawValue)' : '\(T.identifier)' is Not exist")
            }
            return vc
        }
        return instanceFromNib(storyBoard)
    }
}
