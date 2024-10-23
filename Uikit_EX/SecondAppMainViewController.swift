//
//  SecondAppMainViewController.swift
//  Uikit_EX
//
//  Created by 양시관 on 10/23/24.
//

import UIKit

class SecondAppMainViewController: UIViewController {

    
    lazy var diceImageView : UIImageView = {
        let imageview = UIImageView(image: UIImage(named:"one"))
        diceImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return imageview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(diceImageView)
    }
    


}
