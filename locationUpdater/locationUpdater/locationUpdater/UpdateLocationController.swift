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

class UpdateLocationController: UIViewController {
    var rootRef: FIRDatabaseReference? = nil
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        rootRef = FIRDatabase.database().reference()
        //locationManager.delegate = self
        //locationManager.requestWhenInUseAuthorization()
        print("didLoad")
    }
    override func viewDidAppear(animated: Bool) {
        print("didAppear")
    }
    @IBAction func updateLocationTouchUpInside(sender: UIButton) {
        rootRef!.child("location").child("longitude").setValue("fuckyea")
    }
}
/*
// MARK: - CLLocationManagerDelegate
//1
extension UpdateLocationController: CLLocationManagerDelegate {
    // 2
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        // 3
        if status == .AuthorizedWhenInUse {
            
            // 4
            locationManager.startUpdatingLocation()
            
            //5
            //mapView.myLocationEnabled = true
            //mapView.settings.myLocationButton = true
        }
    }
    
    // 6
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            
            // 7
            //mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
            
            // 8
            locationManager.stopUpdatingLocation()
        }
        
    }
}
*/