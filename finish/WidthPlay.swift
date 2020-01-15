//
//  WidthPlay.swift
//  mmm
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class WidthPlay: UIViewController, UITextFieldDelegate {
    
    /*@IBOutlet var Image: UIImageView!
    @IBOutlet var One: UITextField!
    @IBOutlet var Two: UITextField!
    @IBOutlet var Three: UITextField!
    @IBOutlet var Four: UITextField!
    @IBOutlet var Five: UITextField!
    @IBOutlet var Six: UITextField!
    @IBOutlet var answer: UILabel!
    @IBOutlet var Progress: UIProgressView!
    @IBOutlet var Views: UIView!*/
    @IBOutlet var One: UITextField!
    
    @IBOutlet var Image: UIImageView!
    @IBOutlet var answer: UILabel!
  
    @IBOutlet var Progress: UIProgressView!
    @IBOutlet var Views: UIView!
    @IBOutlet var Two: UITextField!
    
    @IBOutlet var Six: UITextField!
    @IBOutlet var Five: UITextField!
    @IBOutlet var Four: UITextField!
    @IBOutlet var Three: UITextField!
    let problem = UIImage(named: "1111.jpg")
    let answerImage = UIImage(named: "45.jpg")
    override func viewDidLoad() {
        super.viewDidLoad()
        Views.isHidden = true
        
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func toggle(_ sender: UISwitch) {
        if sender.isOn {
            Image.image = answerImage
        }
        else {
            Image.image = problem
        }

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        One.resignFirstResponder()
        Two.resignFirstResponder()
        Three.resignFirstResponder()
        Four.resignFirstResponder()
        Five.resignFirstResponder()
        Six.resignFirstResponder()
        
        if One.text == "무기" {
            
            answer.text = "세로 1번 정답"
            Views.isHidden = false
            self.Progress.progress += 0.16
        }
        if Two.text == "무쇠" {
            answer.text = "가로 1번 정답"
            self.Progress.progress += 0.16
        }
        if Three.text == "귀머거리" {
            answer.text = "세로 2번 정답"
            self.Progress.progress += 0.16
        }
        
        if Four.text == "귀싸대기" {
            answer.text = "가로 2번 정답"
            self.Progress.progress += 0.16
        }
        if Five.text == "대추채" {
            answer.text = "세로 3번 정답"
            self.Progress.progress += 0.16
        }
        if Six.text == "채권" {
            answer.text = "가로 4번 정답"
            self.Progress.progress += 0.16
        }
        
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
