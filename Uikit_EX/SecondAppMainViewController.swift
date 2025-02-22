//
//  SecondAppMainViewController.swift
//  Uikit_EX
//
//  Created by 양시관 on 10/23/24.
//

import UIKit

class SecondAppMainViewController: UIViewController {

    let diceimageNameData = ["one","two","three","four","five","sixs"]
    
    lazy var diceImageView : UIImageView = {
        let imageview = UIImageView(image: UIImage(named:"one"))
        imageview.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return imageview
    }()
    
    lazy var changeButton : UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("변경해주세요",for : .normal)
        button.backgroundColor = .purple
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(diceImageView)
        diceImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        diceImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        diceImageView.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
        diceImageView.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive = true
        
        
        view.addSubview(changeButton)
        changeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        changeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        changeButton.topAnchor.constraint(equalTo: diceImageView.bottomAnchor,constant: 200).isActive = true
        changeButton.addTarget(self, action: #selector(didtabButtonChage), for: .touchUpInside)
        
    }
    @objc func didtabButtonChage() {
        diceImageView.image = UIImage(named: diceimageNameData.randomElement() ?? "one")
    }



}
