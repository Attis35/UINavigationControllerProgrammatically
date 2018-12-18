//
//  ViewController.swift
//  UINavigationControllerProgrammatically
//
//  Created by Attila Marosi on 2018. 12. 18..
//  Copyright © 2018. Attila Marosi. All rights reserved.
//

import UIKit

class RootVC: UIViewController {


    let loginButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(loginButtonTapped(_:)), for: .touchUpInside)
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .black
        btn.layer.cornerRadius = 20
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        setupBtnLayout()
        
    }

    private func setupBtnLayout() {
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 120),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    @objc private func loginButtonTapped(_ sender: UIButton) {
        let destinationVC = HomeVC()
        navigationController?.pushViewController(destinationVC, animated: true)
    }
    


}

