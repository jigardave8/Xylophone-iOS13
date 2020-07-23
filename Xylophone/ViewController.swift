
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    var player : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
//        print(sender.currentTitle )
        
        playSound(soundName: sender.currentTitle!)
        
        
    }
   
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
    
    func soundName(inputSound: String) {
        
       }
}

