//
//  AppleViewController.swift
//  homeWork10
//
//  Created by Dmitriy Lee on 03.12.2021.
//

import UIKit
import MapKit

class AppleViewController: UIViewController {
    
    let regionRadius: CLLocationDistance = 10000
    let userLocation = CLLocationCoordinate2DMake(43.198672, 76.869073)

    @IBOutlet weak var appleMapView: MKMapView!
    
    @IBOutlet weak var zoomInButton: UIButton!
    @IBAction func zoomInButtonAction(_ sender: Any) {
        appleMapView.region.span.latitudeDelta *= 0.8
        appleMapView.region.span.longitudeDelta *= 0.8
        appleMapView.setRegion(appleMapView.region, animated: true)
    }
    
    @IBOutlet weak var zoomOutButton: UIButton!
    @IBAction func zoomOutButtonAction(_ sender: Any) {
        appleMapView.region.span.latitudeDelta *= 1.2
        appleMapView.region.span.longitudeDelta *= 1.2
        appleMapView.setRegion(appleMapView.region, animated: true)
    }
    
    @IBOutlet weak var centerButton: UIButton!
    @IBAction func centerButtonAction(_ sender: Any) {
        appleMapView.setRegion(MKCoordinateRegion(center: appleMapView.userLocation.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius), animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appleMapView.showsUserLocation = true

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
    
        let region = MKCoordinateRegion(center: userLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        appleMapView.setRegion(region, animated: true)
        
    }

}
