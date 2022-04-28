//
//  ViewController.swift
//  Kanye Clicker v2
//
//  Created by Dev Patel on 4/26/22.
//

import UIKit

var pointPerClick = 0

class ViewController: UIViewController {
var points = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func morePointPerClick(_ sender: Any) {
        pointPerClick += 1
        //whoever is in charge of making it so when you click Kanye it gives you points add the cost here
    }
    
    
    
}

