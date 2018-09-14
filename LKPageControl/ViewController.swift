//ViewController.swift
/*
 * LKPageControl
 * Created by penumutchu.prasad@gmail.com on 13/09/18
 * Is a product created by abnboys
 * For the  in the LKPageControl
 
 * Here the permission is granted to this file with free of use anywhere in the IOS Projects.
 * Copyright © 2018 ABNBoys.com All rights reserved.
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pc = LKPageControl.init(frame: .zero)
        pc.currentPageIndicatorTintColor = .green
        pc.pageIndicatorTintColor = .blue
        pc.numberOfPages = 4
        pc.translatesAutoresizingMaskIntoConstraints = false
      pc.addTarget(self, action: #selector(onPageChanged(_:)), for: .valueChanged)
        view.addSubview(pc)
        
        self.view.addConstraints([
            
            pc.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            pc.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pc.heightAnchor.constraint(equalToConstant: 35),
            pc.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5, constant: 0)
            
            ])
      
    }
  
  @objc func onPageChanged(_ sender: LKPageControl) {
    
    print("page \(sender.currentPage) is selected")
  }
  

}

