//
//  NSObject.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import Foundation

extension NSObject {
    class var identifier: String {
        return String(describing: self)
    }
}
