//
//  ViewController.swift
//  SuperheroGenerator
//
//  Created by Serezha on 01/04/2019.
//  Copyright © 2019 Serezha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    @IBOutlet weak var SexSwitcher: UISegmentedControl!
    @IBOutlet weak var HeroNameLabel: UILabel!
    
    @IBAction func SexSwitched(_ sender: Any) {
        // Clear name label
        HeroNameLabel.text = ""
    }
    
    @IBAction func GenerateRandomName(_ sender: Any) {
        let selectedSexIndex:Int   = SexSwitcher.selectedSegmentIndex
        let randomName:String      = getRandomName(selectedSexIndex)
        
        // Write name to label
        HeroNameLabel.text = randomName
    }
}

