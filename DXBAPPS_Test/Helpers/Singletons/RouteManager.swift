//
//  RouteManager.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class RouteManager: NSObject {
    
    static let shared = RouteManager()
    
    private override init() {}
    
    var delegate:AppDelegate?{
        return UIApplication.shared.delegate as? AppDelegate
    }
    
    var window:UIWindow?? {
        return UIApplication.shared.delegate?.window
    }
 
    func launchInitialScreen(){
        if let vc = TabbarControllerRouter.make(){
            self.setRootViewController(vc)
        }
    }
    
    func addNavigation(addChild vc:UIViewController, shouldShowNavigation:Bool = false) -> UINavigationController{
        let nv = UINavigationController(rootViewController: vc)
        nv.isNavigationBarHidden = !shouldShowNavigation
        return nv
    }
    
    func clear(window: UIWindow??) {
        window??.subviews.forEach { $0.removeFromSuperview() }
    }
    
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window else {
            window??.rootViewController = vc
            window??.backgroundColor = .white
            window??.makeKeyAndVisible()
            return
        }
        window?.backgroundColor = .white
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}
