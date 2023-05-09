//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    
    
   
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
       
        storyBrain.nextStory(userChoice: userAnswer)
       
        update()
        
        
    }
    
    
    func update(){
        let firstChoices = storyBrain.usersFirstChoice()
        let secondChoice = storyBrain.usersSecondChoice()
        choice1Button.setTitle(firstChoices, for: .normal)
        choice2Button.setTitle(secondChoice, for: .normal)
        
        storyLabel.text = storyBrain.getStoryText()
        
    }
    
}

 
