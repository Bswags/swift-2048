//
//  ViewController.swift
//  swift-2048
//
//  Created by Austin Zheng on 6/3/14.
//  Copyright (c) 2014 Austin Zheng. Released under the terms of the MIT license.
//

import UIKit
import Embrace

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        Embrace.sharedInstance().endAppStartup()
    }

    @IBAction func startGameButtonTapped(_ sender : UIButton) {
        Embrace.sharedInstance().beginEvent(withName: "game_load")
        let game = NumberTileGameViewController(dimension: 4, threshold: 2048)
        self.present(game, animated: true, completion: {
            Embrace.sharedInstance().endEvent(withName: "game_load")
        })
    }
    
}

