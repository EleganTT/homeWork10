//
//  GoogleViewController.swift
//  homeWork10
//
//  Created by Dmitriy Lee on 03.12.2021.
//

import UIKit
import GoogleMaps


class GoogleViewController: UIViewController {

    @IBOutlet weak var zoomOutButton: UIButton!
    @IBAction func zoomOutButtonAction(_ sender: Any) {
        print("button")
    }
    
    @IBOutlet weak var zoomInButton: UIButton!
    @IBAction func zoomInButtonAction(_ sender: Any) {
    }
    
    @IBOutlet weak var userLocationButton: UIButton!
    @IBAction func userLocationButtonAction(_ sender: Any) {
    }
    
    
    var mapView: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        zoomOutButton.layer.zPosition = 1
        zoomInButton.layer.zPosition = 1
        userLocationButton.layer.zPosition = 1
        
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 48, width: view.frame.width, height: view.frame.height - 130), camera: GMSCameraPosition.camera(withLatitude: 43.198672, longitude: 76.869073, zoom: 15))
        mapView?.isMyLocationEnabled = true

        self.view.addSubview(mapView!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
