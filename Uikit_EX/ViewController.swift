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
        label.backgroundColor = .green
        
        return label
        
        
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        view.addSubview(myNametextLabel)
        myNametextLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myNametextLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myNametextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myNametextLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }


}

