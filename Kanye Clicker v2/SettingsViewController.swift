//
//  SettingsViewController.swift
//  Kanye Clicker v2
//
//  Created by Will Schroeder on 5/12/22.
//

import UIKit

class SettingsViewController: UIViewController {
 
    var nvcPoints = 0
    var nvcColorPrimary = "system.Red"
    var nvcColorsSecondary = "system.Orange"
    var nvcTimerBool = false
    var rVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//more setup to do here with the colors
        nvcPoints = rVC.points
        nvcTimerBool = rVC.didActivateTimer
    }
@IBAction func stopidle(_ sender: Any) {nvcTimerBool = false}
}
