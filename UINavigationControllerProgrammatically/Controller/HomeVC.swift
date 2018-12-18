//
//  HomeVC.swift
//  UINavigationControllerProgrammatically
//
//  Created by Attila Marosi on 2018. 12. 18..
//  Copyright © 2018. Attila Marosi. All rights reserved.
//

import UIKit

class HomeVC: UITabBarController  {
    

    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        self.navigationItem.title = "HomeVC"
        self.navigationItem.hidesBackButton = true
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logout(_:)))
        
        
        let firstVC = TabFirstVC()
        let secondVC = TabSecondVC()
        let thirdVC = TabThirdVC()
        firstVC.tabBarItem = UITabBarItem(title: "First", image: nil, tag: 1)
        secondVC.tabBarItem = UITabBarItem(title: "Second", image: nil, tag: 2)
        thirdVC.tabBarItem = UITabBarItem(title: "Third", image: nil, tag: 3)
        let tabBarList = [firstVC, secondVC, thirdVC]
        viewControllers = tabBarList
        
        
        
        
    }
    

    @objc func logout(_ sender: UIBarButtonItem) {
        print("tapped")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
    
    
}
