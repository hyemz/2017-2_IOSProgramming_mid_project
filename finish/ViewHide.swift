//
//  ViewHide.swift
//  finish
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewHide: UIViewController, UITextFieldDelegate {
    var started: Bool!
    let one = UIImage(named: "숨은그림찾기1.jpg")
    let two = UIImage(named: "9월게릴라문제.jpg")
    let three = UIImage(named: "9월게릴라정답.jpg")
    
    @IBOutlet var ViewHidden: UIView!
    @IBOutlet var ViewImage: UIImageView!
    @IBOutlet var ViewTwo: UIView!
    @IBOutlet var Texts: UILabel!
    @IBOutlet var Answer: UITextField!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    /*@IBOutlet var ViewHidden: UIView!
    @IBOutlet var Answer: UITextField!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var ViewImage: UIImageView!*/
    @IBAction func toggle(_ sender: UISwitch) {
        if sender.isOn {
            ViewImage.image = three
        }
        else {
            ViewImage.image = one
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewImage.image = one
        started = false
        ViewHidden.isHidden = true
        ViewTwo.isHidden = true
        
        // Do any additional setup after loading the view.
    }
   // @IBOutlet var solution: UITextField!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        Answer.resignFirstResponder()
        if started == true {
            
            if Answer.text == "9" {
                ViewTwo.isHidden = false
                self.activityIndicator.stopAnimating()
                ViewHidden.isHidden = true
            }
        }
        return true
    }
    @IBAction func Start(_ sender: UIButton) {
        self.activityIndicator.startAnimating()
        ViewImage.image = two
        ViewHidden.isHidden = false
        started = true
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

