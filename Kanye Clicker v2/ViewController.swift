//
//  ViewController.swift
//  Kanye Clicker v2
//
//  Created by Dev Patel on 4/26/22.
//comment change

import UIKit

class ViewController: UIViewController {

    var points = 0
    var pointPerClick = 1
    var idlePoint = 1
    var didActivateTimer = false
    var timed = Timer()
    @IBOutlet weak var pointDisplay: UILabel!
    @IBOutlet weak var kanyeHead: UIImageView!
    
    override func viewDidLoad() {
        timed = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timedAction), userInfo: nil, repeats: true)
        super.viewDidLoad()
        
        if let pointsBack = UserDefaults.standard.string(forKey: "thePoints") {
            let retrievePoints = Int(pointsBack)
            points = retrievePoints!
        }
        else {return}
        
        let idleBack = UserDefaults.standard.integer(forKey: "theIdlePoints")
        guard let x = idleBack as Int? else {
            self.idlePoint = idleBack
        }
    }
    
    @IBAction func clickTapGestureImage(_ sender: Any) {
        points += pointPerClick
    }
    
    @objc func timedAction() {
            pointDisplay.text = String(points)
        UserDefaults.standard.set(String(points), forKey: "thePoints")
        UserDefaults.standard.set(idlePoint, forKey: "theIdlePoints")
    }
    
    @IBAction func morePointPerClick(_ sender: Any) {
        if points >= 10 {
            pointPerClick += 1
            points -= 10
        } else {
            return
        }
        
        //whoever is in charge of making it so when you click Kanye it gives you points add the cost here
    
    }
    

    
    
    @IBAction func doublePointClick(_ sender: Any) {
        if points >= 10000 {
        pointPerClick += pointPerClick
            points -= 10000
        } else {
            return
        }
    }


    @IBAction func idleIncreaase(_ sender: Any) {
        if didActivateTimer == true {return}
        
        if points >= 2500 {
        points -= 2500
            }
        else {return}
        
        didActivateTimer = true
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {_ in Timer()
            self.points += self.idlePoint
        }
        
        
    }
    
    
    
}
