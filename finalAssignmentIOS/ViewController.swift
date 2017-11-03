//
//  ViewController.swift
//  finalAssignmentIOS
//
//  Created by macadmin on 2016-10-24.
//  Copyright © 2016 macadmin. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rQuestions()
        //score.hidden = true
        tryAgain.hidden = true
        answer.text = ""
        exitButton.hidden = true
        score.text = "Score : \(totalCorrect) / \(totalAttend)"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "try1.jpeg")!)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var questions: UILabel!
    
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var secondAnswer: UIButton!
    @IBOutlet weak var thirdAnswer: UIButton!
    @IBOutlet weak var fourAnswer: UIButton!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var tryAgain: UIButton!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var exitButton: UIButton!
    
    
    var correctAnswer : String = ""
    var totalCorrect : Int = 0
    var totalAttend : Int = 0
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func firstButton(sender: UIButton)
    {
        if(correctAnswer == "1")
        {
            totalCorrect = totalCorrect + 1
            //answer.text = "Correct Answer"
            
        }
        nextQuestion(nextButton)
        
    }
    @IBAction func secondButton(sender: UIButton)
    {
        if(correctAnswer == "2")
        {
            totalCorrect = totalCorrect + 1
            //answer.text = "Correct Answer"
            
        }
        nextQuestion(nextButton)
    }
    
    @IBAction func thirdButton(sender: UIButton)
    {
        if(correctAnswer == "3")
        {
            totalCorrect = totalCorrect + 1
            //answer.text = "Correct Answer"
            
        }
        nextQuestion(nextButton)
    }
    
    @IBAction func fouButton(sender: UIButton)
    {
        if(correctAnswer == "4")
        {
            totalCorrect = totalCorrect + 1
            //answer.text = "Correct Answer"
            
        }
        nextQuestion(nextButton)
    }

   //Random Number
    var num = [1,2,3,4,5,6,7,8,9,10]
    var n = 0
    var cnt : Int = 0
    
    func random() -> Int
    {
        if num.count > 1
        {
            let newNumber = Int(arc4random_uniform(UInt32(num.count)))
            n = num[newNumber]
            //print("Random Number : \(newNumber),  Value is :\(n) , Array Length : \(num.count) , Deleted Index : \(num.removeAtIndex(newNumber))")
            num.removeAtIndex(newNumber)
        }
        return n
    }
    
    
    
    func rQuestions()
    {
        cnt = random()
        
        switch(cnt)
        {
            
            case 1 :
            
            questions.text = "In which decade was the American Institute of Electrical Engineers (AIEE) founded?"
            firstAnswer.setTitle("1850s", forState: UIControlState.Normal)
            secondAnswer.setTitle("1880s", forState: UIControlState.Normal)
            thirdAnswer.setTitle("1930s", forState: UIControlState.Normal)
            fourAnswer.setTitle("1950s", forState: UIControlState.Normal)
            correctAnswer = "2"
            
            break
            
        case 2 :
            
            questions.text = "What is part of a database that holds only one type of information?"
            firstAnswer.setTitle("Report", forState: UIControlState.Normal)
            secondAnswer.setTitle("Field", forState: UIControlState.Normal)
            thirdAnswer.setTitle("Record", forState: UIControlState.Normal)
            fourAnswer.setTitle("File", forState: UIControlState.Normal)
            correctAnswer = "2"
            
            break
            
        case 3 :
            
            questions.text = "Which is a type of Electrically-Erasable Programmable Read-Only Memory?"
            firstAnswer.setTitle("Flash", forState: UIControlState.Normal)
            secondAnswer.setTitle("Flange", forState: UIControlState.Normal)
            thirdAnswer.setTitle("Fury", forState: UIControlState.Normal)
            fourAnswer.setTitle("FRAM", forState: UIControlState.Normal)
            correctAnswer = "1"
            
            break
            
            
        case 4 :
            
            questions.text = "Who developed Yahoo?"
            firstAnswer.setTitle("Dennis Ritchie & Ken Thompson", forState: UIControlState.Normal)
            secondAnswer.setTitle("David Filo & Jerry Yang", forState: UIControlState.Normal)
            thirdAnswer.setTitle("Vint Cerf & Robert Kahn", forState: UIControlState.Normal)
            fourAnswer.setTitle("Steve Case & Jeff Bezos", forState: UIControlState.Normal)
            correctAnswer = "2"
            
            break
            
            
        case 5 :
            
            questions.text = "In what year was the @ chosen for its use in e-mail addresses?"
            firstAnswer.setTitle("1976", forState: UIControlState.Normal)
            secondAnswer.setTitle("1972", forState: UIControlState.Normal)
            thirdAnswer.setTitle("1980", forState: UIControlState.Normal)
            fourAnswer.setTitle("1984", forState: UIControlState.Normal)
            correctAnswer = "2"
            
            break
            
            
        case 6 :
            
            questions.text = "Where is the headquarters of Intel located?"
            firstAnswer.setTitle("Redmond, Washington", forState: UIControlState.Normal)
            secondAnswer.setTitle("Tucson, Arizona", forState: UIControlState.Normal)
            thirdAnswer.setTitle("Santa Clara, California", forState: UIControlState.Normal)
            fourAnswer.setTitle("Richmond, Virginia", forState: UIControlState.Normal)
            correctAnswer = "3"
            
            break
            
            
        case 7 :
            
            questions.text = "Programs used to control system performance are classified as"
            firstAnswer.setTitle("experimental programs", forState: UIControlState.Normal)
            secondAnswer.setTitle("system programs", forState: UIControlState.Normal)
            thirdAnswer.setTitle("specialized program", forState: UIControlState.Normal)
            fourAnswer.setTitle("organized programs", forState: UIControlState.Normal)
            correctAnswer = "2"
            
            break
            
            
        case 8 :
            
            questions.text = "What is Canada’s national sport?"
            firstAnswer.setTitle("Hockey", forState: UIControlState.Normal)
            secondAnswer.setTitle("Curling", forState: UIControlState.Normal)
            thirdAnswer.setTitle("Lacrosse", forState: UIControlState.Normal)
            fourAnswer.setTitle("Cricket", forState: UIControlState.Normal)
            correctAnswer = "1"
            
            break
            
            
        case 9 :
            
            questions.text = "Which of the following is not a feature of iOS 7?"
            firstAnswer.setTitle("Open-in management", forState: UIControlState.Normal)
            secondAnswer.setTitle("Single sign-on", forState: UIControlState.Normal)
            thirdAnswer.setTitle("iCloud integration with third-party apps", forState: UIControlState.Normal)
            fourAnswer.setTitle("Per app VPN", forState: UIControlState.Normal)
            correctAnswer = "1"
            
            break
            
            
        case 10 :
            
            questions.text = "Which Apple iOS 7 features might IT be concerned about?"
            firstAnswer.setTitle("Improvements to the Mail app", forState: UIControlState.Normal)
            secondAnswer.setTitle("AirDrop", forState: UIControlState.Normal)
            thirdAnswer.setTitle("Automatic application updates", forState: UIControlState.Normal)
            fourAnswer.setTitle("All of the above", forState: UIControlState.Normal)
            correctAnswer = "1"
            
            break
            
        default :
            
            break
            
        }

    }
    
    @IBAction func nextQuestion(sender: UIButton)
    {
        answer.hidden = false
        totalAttend += 1
        
        if(totalAttend >= 5)
        {
            //tryAgain.hidden = false
            score.hidden = true
            
            if(totalCorrect == 1 || totalCorrect == 2 || totalCorrect == 0)
            {
                let alert = UIAlertController(title: "Your Score is : \(totalCorrect) / \(totalAttend)", message: "Please Try Again!", preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "Retry", style: UIAlertActionStyle.Default, handler: {
                                        action in self.tryNext(self.tryAgain)
                                        }))
                
                self.presentViewController(alert, animated: true, completion: nil)
            }
            else if(totalCorrect == 3)
            {
                let alert = UIAlertController(title: "Your Score is : \(totalCorrect) / \(totalAttend)", message: "Good job", preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "Retry", style: UIAlertActionStyle.Default, handler: {
                    action in self.tryNext(self.tryAgain)
                }))
                
                alert.addAction(UIAlertAction(title: "Exit", style: UIAlertActionStyle.Cancel, handler: { action in exit(0)}))
                
                self.presentViewController(alert, animated: true, completion: nil)
            }
            else if (totalCorrect == 4)
            {
                let alert = UIAlertController(title: "Your Score is : \(totalCorrect) / \(totalAttend)", message: "Excellent Work", preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "Retry", style: UIAlertActionStyle.Default, handler: {
                    action in self.tryNext(self.tryAgain)
                }))
                
                alert.addAction(UIAlertAction(title: "Exit", style: UIAlertActionStyle.Cancel, handler: { action in exit(0)}))
                
                self.presentViewController(alert, animated: true, completion: nil)
            }
            else if (totalCorrect == 5)
            {
                let alert = UIAlertController(title: "Your Score is : \(totalCorrect) / \(totalAttend)", message: "You are a genius! \n Your Score is : \(totalCorrect) / \(totalAttend)", preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "Retry", style: UIAlertActionStyle.Default, handler: {
                    action in self.tryNext(self.tryAgain)
                }))
                
                alert.addAction(UIAlertAction(title: "Exit", style: UIAlertActionStyle.Cancel, handler: { action in exit(0)}))
                
                self.presentViewController(alert, animated: true, completion: nil)
            }
            else
            {
                answer.text = ""
            }
            
//            score.text = "Score : \(totalCorrect) / \(totalAttend)"
            nextButton.hidden = true
            //exitButton.hidden = false
            
            totalAttend = 0
            totalCorrect = 0
            num = [1,2,3,4,5,6,7,8,9,10]
        }
        else
        {
            
            rQuestions()
            tryAgain.hidden = true
            //score.hidden = true
            answer.text = ""
        }
        score.text = "Score : \(totalCorrect) / \(totalAttend)"
    }
    
    @IBAction func tryNext(sender: UIButton)
    {
        num = [1,2,3,4,5,6,7,8,9,10]
        
        rQuestions()
        
        totalAttend = 0
        totalCorrect = 0
        score.hidden = false
        score.text = "Score : \(totalCorrect) / \(totalAttend)"
        tryAgain.hidden = true
        answer.text = ""
        nextButton.hidden = false
        exitButton.hidden = true
    }
    
    
    @IBAction func exitFunc(sender: UIButton) {
        exit(0)
    }
}
