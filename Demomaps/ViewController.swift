//
//  ViewController.swift
//  Demomaps
//
//  Created by vamsi on 06/04/19.
//  Copyright © 2019 vamshi krishna. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyAnfypX6EWEjJndRRF-hR4z2kcOU-ms1xM")
        let camera =  GMSCameraPosition.camera(withLatitude: 30.707905, longitude: 76.712149, zoom: 10)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        let marker = GMSMarker()
        marker.title = "Title"
        marker.snippet = "Subtitle"
        marker.position = CLLocationCoordinate2D(latitude: 30.707905, longitude: 76.712149)
        marker.map = mapView
        
    }
    
    
}

