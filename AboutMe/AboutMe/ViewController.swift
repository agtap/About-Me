//
//  ViewController.swift
//  AboutMe
//
//  Created by Agnes Otap on 6/20/18.
//  Copyright © 2018 Agnes Otap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var stackViewGeneral: UIStackView!

    @IBOutlet weak var stackViewFamily: UIStackView!
    
    @IBOutlet weak var stackViewHobbies: UIStackView!
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { (context) -> Void in
            
            let orientation = UIApplication.shared.statusBarOrientation
            
            if orientation.isPortrait {
                self.stackViewGeneral.axis = .vertical
            } else {
                self.stackViewGeneral.axis = .horizontal
            }
        }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

