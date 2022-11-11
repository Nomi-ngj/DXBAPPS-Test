//
//  TabbarController.swift
//  DXBAPPS_Test
//
//  Created by Nouman Gul on 11/11/2022.
//

import UIKit

class TabbarController: UITabBarController, TabbarControllerDisplaying {
    
    var presenter: TabbarControllerPresenting?
    var middleBtn:UIButton!
    static var midButtonIndex = 2
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        presenter?.viewDidLoad()
    }
    
    func setupUI() {
        
        setupMiddleButton()
        setupTabbarUI()
    }
    
    private func setupTabbarUI(){
        tabBar.layer.shadowOffset = CGSize(width: 1, height: 1)
        tabBar.layer.shadowRadius = 5
        tabBar.layer.shadowColor = UIColor.darkGray.cgColor
        tabBar.layer.shadowOpacity = 0.4
        tabBar.backgroundColor = .white
    }
    
    // TabBarButton – Setup Middle Button
    private func setupMiddleButton() {
        
        middleBtn = UIButton(frame: CGRect(x: (self.view.bounds.width / 2)-40, y: -20, width: 80, height: 80))
        
        middleBtn.setImage(UIImage(named: "tabbar_item_addReceipt"), for: .normal)
        middleBtn.setImage(UIImage(named: "tabbar_item_addReceipt"), for: .selected)
        middleBtn.setTitle("New Order", for: .normal)
        
        middleBtn.titleLabel?.font = Theme.fonts.midButtonFont
        middleBtn.setBackgroundImage(UIImage(named: "AddIcon"), for: UIControl.State())
        middleBtn.setBackgroundImage(UIImage(named: "AddIcon"), for: UIControl.State.highlighted)
        middleBtn.backgroundColor = Theme.color.secondaryColor
        middleBtn.layer.cornerRadius = (middleBtn.frame.height/2)
        //add to the tabbar and add click event
        self.tabBar.addSubview(middleBtn)
        middleBtn.addTarget(self, action: #selector(self.menuButtonAction), for: .touchUpInside)
        adjustImageAndTitleOffsetsForButton(button: middleBtn)
        self.view.layoutIfNeeded()
    }
    
    private func adjustImageAndTitleOffsetsForButton (button: UIButton) {
        
        let spacing: CGFloat = 3.0
        
        let imageSize = button.imageView!.frame.size
        
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(imageSize.height + spacing), right: 0)
        
        let titleSize = button.titleLabel!.frame.size
        
        button.imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + spacing), left: 0, bottom: 0, right: -titleSize.width)
    }
    // Menu Button Touch Action
    @objc func menuButtonAction(sender: UIButton) {
        sender.isSelected = true
        self.selectedIndex = TabbarController.midButtonIndex   //to select the middle tab. use "1" if you have only 3 tabs.
        
        if let nav = self.children.last as? UINavigationController{
            debugPrint("Do you navigation here..")
        }
        
    }
}

extension TabbarController: UITabBarControllerDelegate{
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {

        if let index = self.tabBar.items?.firstIndex(of: item), let _ = tabBar.subviews[index].subviews.first as? UIImageView{
            if self.selectedIndex == TabbarController.midButtonIndex{
                middleBtn.isSelected = true
            }else{
                middleBtn.isSelected = false
            }
        }
    }
}
