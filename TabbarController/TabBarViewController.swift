//
//  TabBarViewController.swift
//  TabbarController
//
//  Created by Hoàng Khánh on 4/11/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    var viewControler1:ViewController1?
    var viewController2:ViewController2?
    var viewController3:ViewController3?
    var subViewController:[UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        viewControler1 = ViewController1()
        viewController2 = ViewController2()
        viewController3 = ViewController3()
        
        subViewController.append(viewControler1!)
        subViewController.append(viewController2!)
        subViewController.append(viewController3!)
        
        viewControler1?.tabBarItem = UITabBarItem(title: "Home", image: nil, tag: 0)
        viewController2?.tabBarItem = UITabBarItem(title: "Calendar", image: nil, tag: 1)
        viewController3?.tabBarItem = UITabBarItem(title: "Setting", image: nil, tag: 2)
        
        self.setViewControllers(subViewController, animated: true)
        self.selectedIndex = 0
        self.selectedViewController = viewControler1
        self.tabBar.tintColor = .red
        
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            print("tag 0")
            tabBar.tintColor = .red
            break
        case 1:
            print("tag 1")
            tabBar.tintColor = .green
            break
        case 2:
            print("tag 2")
            tabBar.tintColor = .blue
            break
        default:
            print("no tag")
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
