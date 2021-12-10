//
//  YandexViewController.swift
//  homeWork10
//
//  Created by Dmitriy Lee on 03.12.2021.
//

import UIKit
import YandexMapsMobile

class YandexViewController: UIViewController {
    
    var mapView: YMKMapView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapKit = YMKMapKit.sharedInstance()
        let scale = UIScreen.main.scale
        
        mapView = YMKMapView(frame: CGRect(x: 0, y: 48, width: view.frame.width, height: view.frame.height - 130))
        
        
        mapView?.mapWindow.map.move(with:
                                        YMKCameraPosition(target: YMKPoint(latitude: 0, longitude: 0), zoom: 14, azimuth: 0, tilt: 0))
        

        let userLocationLayer = mapKit.createUserLocationLayer(with: (mapView?.mapWindow)!)
        userLocationLayer.setVisibleWithOn(true)
        userLocationLayer.isHeadingEnabled = true
        userLocationLayer.setAnchorWithAnchorNormal(CGPoint(x: 0.5 * mapView!.frame.size.width * scale, y: 0.5 * mapView!.frame.size.height * scale), anchorCourse: CGPoint(x: 0.5 * mapView!.frame.size.width * scale, y: 0.83 * mapView!.frame.size.height * scale))
        

        
        view.addSubview(mapView!)
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
