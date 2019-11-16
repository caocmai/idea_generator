//
//  ViewController.swift
//  magic8ball_v2
//
//  Created by Cao Mai on 11/15/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties

    let companies = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]

    let something = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    

    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var somethingLabel: UILabel!
    
    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<companies.count)
        let randomIndex2 = Int.random(in: 0..<something.count)
        
        companyLabel.text = companies[randomIndex]
        somethingLabel.text = something[randomIndex2]
    }
    
    @IBAction func ideaButton(_ sender: Any) {
//        print("button")
//        companyLabel.text = "Changed for company"
//        somethingLabel.text = "Changed for text"
//
//        // 1
//        let randomIndex = Int.random(in: 0..<companies.count)
//        let randomIndex2 = Int.random(in: 0..<something.count)
//
//
//        // 2
//        companyLabel.text = companies[randomIndex]
//        somethingLabel.text = something[randomIndex2]
//
        generateAnswer()

    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
//        let randomIndex = Int.random(in: 0..<companies.count)
//
//        companyLabel.text = companies[randomIndex]
        generateAnswer()

    }


}

