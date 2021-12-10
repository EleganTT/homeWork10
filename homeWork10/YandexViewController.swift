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

        mapView = YMKMapView(frame: CGRect(x: 0, y: 48, width: view.frame.width, height: view.frame.height - 130))
        
        
        mapView?.mapWindow.map.move(with:
                                        YMKCameraPosition(target: YMKPoint(latitude: 43.198672, longitude: 76.869073), zoom: 14, azimuth: 0, tilt: 0))
        

        
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
