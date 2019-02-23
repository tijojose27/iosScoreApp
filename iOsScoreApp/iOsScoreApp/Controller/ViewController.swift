//
//  ViewController.swift
//  iOsScoreApp
//
//  Created by Tijo Jose on 2/22/19.
//  Copyright © 2019 Tijo Jose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var team1ScoreLabel: UILabel!
    @IBOutlet weak var team2ScoreLabel: UILabel!
    
    var player1 : Player!
    var player2 : Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player1 = Player()
        player2 = Player()
        
    }

    @IBAction func team1ScoreBtn(_ sender: Any) {
        player1.incrementScore()
        updatePlayer1()
    }
    
    @IBAction func team2ScoreBtn(_ sender: Any) {
        player2.incrementScore()
        updatePlayer2()
    }
    
    @IBAction func team1FoulBtn(_ sender: Any) {
        player1.decreaseScore()
        updatePlayer1()
    }
    
    @IBAction func team2FoulBtn(_ sender: Any) {
        player2.decreaseScore()
        updatePlayer2()
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        player1.reset()
        player2.reset()
        updatePlayer2()
        updatePlayer1()
    }
    
    func updatePlayer1(){
        team1ScoreLabel.text = player1.getScore()
    }
    
    func updatePlayer2(){
        team2ScoreLabel.text = player2.getScore()
    }
    
    
}

