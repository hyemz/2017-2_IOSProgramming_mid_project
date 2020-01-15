//
//  MapViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 2017. 12. 25..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
   
    var selectedIndex: Int? = nil
    var LocationAnnotation: Location? = nil
    var loc: Location? = nil
    @IBOutlet var name: UILabel!
    @IBOutlet var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let _ = selectedIndex {
            map.setRegion(MKCoordinateRegionMake((self.loc?.coordinate)!,MKCoordinateSpanMake(0.007, 0.007)), animated: true)
                }
        if let annotation = LocationAnnotation {
            self.map.removeAnnotation(annotation)
        }
        // 새로운 annotation 위치가 있다면 추가 
        if let annotation = loc {
        self.LocationAnnotation = annotation
        self.map.addAnnotation(self.LocationAnnotation!)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLocView" {
        if let destVC = segue.destination as? LoctionTableViewController {
            destVC.mainVC = self
        }
          
   }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func mapAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.map.mapType = MKMapType.standard
        case 1:
            self.map.mapType = MKMapType.satellite
        default:
                self.map.mapType = MKMapType.hybrid
        }
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
