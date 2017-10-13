//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Matt Ennico on 10/13/17.
//  Copyright © 2017 Matt Ennico. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "A smiley face"
        }
        if emoji == "😂" {
            definitionLabel.text = "Laughing so hard I'm crying"
        }
        if emoji == "😐" {
            definitionLabel.text = "No emotion"
        }
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
}
