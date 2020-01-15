//
//  ViewViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 2017. 12. 25..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class ViewViewController: UIViewController {

    var recipes: [NSManagedObject] = []
    @IBOutlet var textTitle: UITextField!
    @IBOutlet var textContents: UITextView!
    var detailRecipe: NSManagedObject?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let recipe = detailRecipe {
            textTitle.text = recipe.value(forKey: "title") as? String
            textContents.text = recipe.value(forKey: "contents") as? String
        }

        // Do any additional setup after loading the view.
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
