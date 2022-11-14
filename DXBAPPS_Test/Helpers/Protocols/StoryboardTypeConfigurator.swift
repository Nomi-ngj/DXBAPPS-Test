//
//  StoryboardTypeConfigurator.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import Foundation

protocol StoryboardTypeConsuming:AnyObject{
    static func getVC(_ storyBoard: StoryboardType) -> Self
}
