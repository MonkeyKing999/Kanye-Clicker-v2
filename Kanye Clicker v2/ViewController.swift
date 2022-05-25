//
//  ViewController.swift
//  Kanye Clicker v2
//
//  Created by Dev Patel on 4/26/22.
//comment change1 s 
import AVFoundation
import UIKit


class ViewController: UIViewController {

    var points = 0
    var pointPerClick = 1
    var idlePoint = 0
    var didActivateTimer = false
    var timed = Timer()
    @IBOutlet weak var pointDisplay: UILabel!
    @IBOutlet weak var kanyeHead: UIImageView!
    @IBOutlet weak var secretLabel: UILabel!
    var string = ""
    
    var player: AVAudioPlayer?
    let url = URL(string: "https://en.wikipedia.org/wiki/Kanye_West")
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
        let retrieveTimer = UserDefaults.standard.bool(forKey: "activation")
        didActivateTimer = retrieveTimer
        
        if didActivateTimer == true {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {_ in Timer()
self.points += self.idlePoint
                let string = self.pointDisplay.text
                switch string?.count {
                case 1:
                    self.pointDisplay.frame.size.width = 50.0
                case 2:
                    self.pointDisplay.frame.size.width = 70.0
                case 3:
                    self.pointDisplay.frame.size.width = 90.0
                case 4:
                    self.pointDisplay.frame.size.width = 110.0
                case 5:
                    self.pointDisplay.frame.size.width = 130.0
                case 6:
                    self.pointDisplay.frame.size.width = 150.0
                    print("Resetting?")
                default:
                    print("There is an unexpected character count.")
                }
        }
        }
        else{idlePoint = 0}
    }
// Music Player by: John Jackowski  START
    @IBAction func allfallsdown(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "KanyeAllFallsDown", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    @IBAction func golddigger(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "KanyeGoldDiggerCleen", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    @IBAction func flashinglights(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "FlashingLights", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    @IBAction func jesuswalks(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "JesusWalks", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    @IBAction func power(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "Power", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
         @IBAction func Homcoming(_ sender: Any) {
         
         if let player = player, player.isPlaying {
            // stop playback
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "Homecoming", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    @IBAction func guitTrip(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "GuiltTrip", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    @IBAction func moon(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "Moon", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    @IBAction func kidsSee(_ sender: Any) {
        if let player = player, player.isPlaying {
            // stop playback
            
            player.stop()
        }
        else {
            //set up player, and play
            let urlString = Bundle.main.path(forResource: "KidsSeeGhostsKanye", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
            }
            catch {
                print("somthing went wrong")
            }
        }
    }
    
    // Music Player by: John Jackowski END
    
    @IBAction func clickTapGestureImage(_ sender: Any) {
        points += pointPerClick
    }
    @IBAction func restart(_ sender: Any) {
        points = 0
        pointPerClick = 1
        idlePoint = 0
        secretLabel.text = ("")
    }
    
    @objc func timedAction() {
            pointDisplay.text = String(points)
        UserDefaults.standard.set(String(points), forKey: "thePoints")
        UserDefaults.standard.set(idlePoint, forKey: "theIdlePoints")
        UserDefaults.standard.set(didActivateTimer, forKey: "activation")
        if points >= 1000000 {
            points = 0
            pointPerClick = 0
            idlePoint = 0
            secretLabel.text = ("WOW, You managed to break 1 million points. Thats great that you like the game so much but im afraid im going to stop you from playing.")
        }
    
        let data = String(points)
        string = data
        if string.count >= 3 {
            pointDisplay.frame.size.width = 48.0
        }
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
        if points >= 2500 {
        points -= 2500
            idlePoint += 10
            }
        else {return}
    }
    
    @IBAction func godmode(_ sender: Any) {
        points += 10000
    }
 
    @IBAction func kanyehistory(_ sender: UIButton){
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}
