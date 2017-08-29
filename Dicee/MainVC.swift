//
//  MainVC.swift
//  Dicee
//
//  Created by Tiago Do Couto on 29/08/17.
//  Copyright © 2017 Tiago Do Couto. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //outlets
    @IBOutlet weak var imgDice1: UIImageView!
    @IBOutlet weak var imgDice2: UIImageView!
    
    //vars
    var indexDice1 = 0
    var indexDice2 = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    //lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDices()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDices()
    }
    
    //actions
    @IBAction func rollDices(_ sender: Any) {
        updateDices()
    }
    
    //custom
    func updateDices(){
        indexDice1 = Int(arc4random_uniform(6))
        indexDice2 = Int(arc4random_uniform(6))
        imgDice1.image =  UIImage(named: diceArray[indexDice1])
        imgDice2.image =  UIImage(named: diceArray[indexDice2])
    }
}

