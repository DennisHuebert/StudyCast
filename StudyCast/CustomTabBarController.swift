//
//  CustomTabBarController.swift
//  StudyCast
//
//  Created by Dennis Huebert on 2016-11-11.
//  Copyright © 2016 Austin Phillips. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let groupsTableViewContoller =  GroupsTableViewController()
        let groupsNavigationController = UINavigationController(rootViewController:  groupsTableViewContoller)
        groupsNavigationController.title = "Groups"
        groupsNavigationController.tabBarItem.image = UIImage(named: "GroupsIcon")
        
        let castController = CastMapController()
        let castNavigationController = UINavigationController(rootViewController: castController)
        castNavigationController.title = "Cast"
        castNavigationController.tabBarItem.image = UIImage(named: "CastIcon")
        
        let homeController = MainScreenController()
        let homeNavigationController = UINavigationController(rootViewController: homeController)
        homeNavigationController.title = "Home"
        homeNavigationController.tabBarItem.image = UIImage(named: "HomeIcon")
        

        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.lightGray], for: .selected)
        UITabBar.appearance().tintColor = UIColor.lightGray
        
        viewControllers = [homeNavigationController, castNavigationController, groupsNavigationController]
    }
}
