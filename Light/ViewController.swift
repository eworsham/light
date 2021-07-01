//
//  ViewController.swift
//  Light
//
//  Created by Ryan Worsham on 6/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightButton: UIButton!
    var lightOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setImage(UIImage(systemName: "lightbulb.fill"), for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    

}

