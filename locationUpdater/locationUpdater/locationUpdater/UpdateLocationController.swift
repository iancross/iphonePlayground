//
//  UpdateLocationController.swift
//  locationUpdater
//
//  Created by crossibc on 8/14/16.
//  Copyright © 2016 crossibc. All rights reserved.
//

import UIKit
import Firebase
import GoogleMaps
import GooglePlaces

class UpdateLocationController: UIViewController, CLLocationManagerDelegate {
    var rootRef: FIRDatabaseReference? = nil
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        rootRef = FIRDatabase.database().reference()
        print("didLoad")
        
        
        //self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            //locationManager.startUpdatingLocation()
        }
        rootRef?.child("location").observeEventType(.ChildChanged) { (snapshot) in
            print (snapshot)
        }
    }
    override func viewDidAppear(animated: Bool) {
        print("didAppear")
    }
    @IBAction func updateLocationTouchUpInside(sender: UIButton) {
        //let manager = CLLocationManager()
        if let locValue : CLLocationCoordinate2D = locationManager.location?.coordinate {
            print("locations = \(locValue.latitude) \(locValue.longitude)")
            rootRef?.child("location").child("longitude").setValue(locValue.longitude)
            rootRef?.child("location/latitude").setValue(locValue.latitude)
        }
        else {
            print ("nothing")
        }
    }
    /*func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let locValue : CLLocationCoordinate2D = manager.location?.coordinate {
            //print("locations = \(locValue.latitude) \(locValue.longitude)")
        }
    }*/
}
