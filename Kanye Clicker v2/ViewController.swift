//
//  ViewController.swift
//  Kanye Clicker v2
//
//  Created by Dev Patel on 4/26/22.
//com

import UIKit

class ViewController: UIViewController {

    var points = 0
    var pointPerClick = 1
    var idlePoint = 0
    var didActivateTimer = false
    @IBOutlet weak var pointDisplay: UILabel!
    @IBOutlet weak var kanyeHead: UIImageView!
    
    func update () {
        pointDisplay.text = String(points)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func morePointPerClick(_ sender: Any) {
        pointPerClick += 1
        //whoever is in charge of making it so when you click Kanye it gives you points add the cost here
    update()
    }
    
    @IBAction func clickkanye(_ sender: UITapGestureRecognizer) {
        points += pointPerClick
        update()
    }
    
    @IBAction func doublePointClick(_ sender: Any) {
        pointPerClick *= 2
    }
    
    @IBAction func idleIncrease(_ sender: Any) {
        
        if didActivateTimer == true {return}
        
        if points >= 2500 {
        points -= 2500
            update()
        }
        else {return}
        
        didActivateTimer = true
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)  {_ in Timer()
            self.points += self.idlePoint
            self.update()
        }
        }
}
