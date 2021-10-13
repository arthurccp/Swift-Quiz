//
//  ResultViewController.swift
//  Swift Quiz
//
//  Created by Mac on 04/10/2021.
//  Copyright © 2021 br.com.arthursilva. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    
    var totalCorrectAnswers: Int = 0
    var totalAnwers: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas respondidas: \(totalAnwers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas Erradas: \(totalAnwers - totalCorrectAnswers)"
        let score = totalCorrectAnswers*100/totalAnwers
        lbScore.text = "\(score)%"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
