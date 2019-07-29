//
//  ViewController.swift
//  emojionalProject
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["🥺" : "super sad", "🤡" : "clown boi", "👻" : "JAH", "🏇" : "horse girl", "😳" : "uh ohh", "🤠" : "cow boi", "🙃" : "boiiii", "🤪" : "yeet", "🦍" : "harambe", "👌" : "GOTTEM"]
    let customMessages = ["super sad": ["cheer up buttercup", "it's okay buddy", "it'll get better, i promise"], "clown boi": ["jajajajajja", "cLoWn ChECk", "ABRA CADABRA"],  "JAH": ["it'll get better", "SPOTLIGHT MOONLIGHT UHH", "Everybody gansta tih jah..."], "horse girl": ["no dad, i want to BE a horse", "Let'S MaKe A vSCo HangOuT", "neigh neigh"], "uh ohh": ["don't worry", "everything's a shocker!", "keep your head up, it'll get better!"], "cow boi": ["keep smiling", "be happy", "love your life!"], "boiiii": ["RIP", "Wasted", "TriGgErEd"], "yeet": ["AYYY", "YEAH BOIII", "YEE LES GOOO"], "harambe": ["RIP", "you will be missed :( ", "F in the chat"], "GOTTEM": ["get RECKT BOIII", "SKSKSKSKS", "PERIODDTT"]]
    
    @IBAction func showMessage(sender: UIButton) {
            let selectedEmotion = sender.titleLabel?.text
            
        // the rest of your code from Iteration 1
        // top part of the message
        
        let randomMess = Int.random(in: 0..<2)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomMess]
        
        let alertController = UIAlertController.init(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
    
        
        
        // bottom part of the message
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        
        // makes the message appear and disappear
        present(alertController, animated: true, completion: nil)
    }
    
}

    




