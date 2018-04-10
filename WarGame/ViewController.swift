//
//  ViewController.swift
//  WarGame
//
//  Created by Chris Sipanya on 3/5/18.
//  Copyright © 2018 Chris Sipanya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var playerPoints: UILabel!
    @IBOutlet weak var CupPoints: UILabel!
    
    
    @IBAction func dealButton(_ sender: UIButton)
    {
        let leftRandNum: UInt32 = arc4random_uniform(13) + 2
        let rightRandNum: UInt32 = arc4random_uniform(13) + 2
        leftCard.image = UIImage(named: "card\(leftRandNum)")
        rightCard.image = UIImage(named: "card\(rightRandNum)")
        
        if leftRandNum > rightRandNum && leftRandNum != rightRandNum{
            var player: Int = Int(playerPoints.text!)!
            player = player + 1
            playerPoints.text = String(player)
        }
        else if leftRandNum < rightRandNum && leftRandNum != rightRandNum{
            var cup: Int = Int(CupPoints.text!)!
            cup = cup + 1
            CupPoints.text = String(cup)
        }

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

