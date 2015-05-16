//
//  ViewController.swift
//  FunFacts
//
//  Created by Evan Latner on 5/16/15.
//  Copyright (c) 2015 Level Labs. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    let factBook = Factbook()
    let colorWheel = Colorwheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        funFactLabel.text = factBook.randomFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func generateFact() {
        
        var randomColor = colorWheel.randomColor()

        
        
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        let facts = ["So cool", "Oh my this is awesome", "Wowza", "Yeehaw"]
        
        funFactLabel.text = factBook.randomFact()
        
    }
}

