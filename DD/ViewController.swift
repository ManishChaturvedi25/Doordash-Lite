//
//  ViewController.swift
//  DD
//
//  Created by ctsuser1 on 5/8/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    // Keeping Apple Cupertine office as default lat lng
    var lat:Double = 0.0
    var lng:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
                let userLocation:CLLocation = locations[0] as CLLocation
        
        // Call stopUpdatingLocation() to stop listening for location updates,
        // other wise this function will be called every time when user location changes.
        manager.stopUpdatingLocation()
        
        let coordinations = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude,longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpanMake(0.2,0.2)
        let region = MKCoordinateRegion(center: coordinations, span: span)
        
        mapView.setRegion(region, animated: true)
        
        // Drop a pin at user's Current Location
        let pin = MKPointAnnotation()
        pin.coordinate.latitude = userLocation.coordinate.latitude
        pin.coordinate.longitude = userLocation.coordinate.longitude
        self.lat = userLocation.coordinate.latitude
        self.lng = userLocation.coordinate.longitude
        pin.title = "Current Location"
        mapView.addAnnotation(pin)

    }
    
    
    @IBAction func searchNearestRestaurant(_ sender: Any) {
        
        let apiClient = DoorDashAPIClient()

        apiClient.searchForNearestResturants(withLat: self.lat, lng: self.lng) {resturants, error in
        
            
            
        }
    

    }
}

