//
//  ViewController.swift
//  Dicee App
//
//  Created by Polina Chernomaz on 1/8/18.
//  Copyright © 2018 Polina Chernomaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //ib = interface builder
    //if circles are filled, code is attached to UI elements. if not, connection has been cut
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    //1: Create a variable named randomDiceIndex1 of Int and set to 0
    var randomDiceIndex1 : Int = 0
    //2: Create a variable named randomDiceIndex2 of Int and set to 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    //if phone is shook
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}
