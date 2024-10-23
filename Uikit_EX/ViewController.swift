//
//  ViewController.swift
//  Uikit_EX
//
//  Created by 양시관 on 10/23/24.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var myNametextLabel : UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "양시관"
        label.textAlignment = .center
        
        return label

    }()
    
    lazy var chageButton : UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("인사합시다.", for: .normal)
        button.backgroundColor = .purple
        
        return button
        
        
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        view.addSubview(myNametextLabel)
        myNametextLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myNametextLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myNametextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myNametextLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
  
        
        view.addSubview(chageButton)
        chageButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        chageButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        chageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        chageButton.topAnchor.constraint(equalTo: myNametextLabel.bottomAnchor,constant: 200).isActive = true
        chageButton.addTarget(self, action: #selector(didtabButtonChage), for: .touchUpInside)
    }
    
    @objc func didtabButtonChage() {
        myNametextLabel.text = "안녕하세요"
    }


}

