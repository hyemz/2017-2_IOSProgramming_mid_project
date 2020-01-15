//
//  KangPicture.swift
//  finish
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class KangPicture: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let one = UIImage(named: "에너01.jpg")
    let two = UIImage(named: "활활01.jpg")
    @IBOutlet var Image: UIImageView!
    @IBOutlet var Segment: UISegmentedControl!
    @IBOutlet var con: UIButton!
    @IBOutlet var PickerView: UIPickerView!
    @IBOutlet var cond: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Image.image = one
        cond.isHidden = true
        // Do any additional setup after loading the view.
    }
    let Arrays: Array<String> = ["강다니엘","박지훈","옹성우","김재환"]
    @IBAction func Seg(_ sender: UISegmentedControl) {
        if Segment.selectedSegmentIndex == 0 {
            Image.image = one
        }
        if Segment.selectedSegmentIndex == 1{
            Image.image = two
        }
    }
    
    @IBAction func confirm(_ sender: UIButton) {
        let naming: String = Arrays[self.PickerView.selectedRow(inComponent: 0)]
            if sender == con && naming == Arrays[0]{
                cond.isHidden = false
            }
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Arrays.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Arrays[row]
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
