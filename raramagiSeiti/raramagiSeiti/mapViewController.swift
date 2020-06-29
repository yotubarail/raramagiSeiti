//
//  ViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/06/19.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class mapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 位置情報使用の通知を表示
        locationManager.requestAlwaysAuthorization()
        
        // 地図の真ん中を決める
        let centerLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(35.747744, 139.429784)
        mapView.setCenter(centerLocation, animated: true)
        
        // 緯度と経度から縮尺を決める
        var region:MKCoordinateRegion = mapView.region
            region.center = centerLocation
            region.span.latitudeDelta = 0.02
            region.span.longitudeDelta = 0.03
        mapView.setRegion(region,animated:true)
        
        mapView.delegate = self
        locationManager.delegate = self
        
        
        /*
        東大和市内
        */
        
        // ピンを生成
        let higasiyamatosiStaPin = MKPointAnnotation()
        let botanicaiGardenPin = MKPointAnnotation()
        let bigboxPin = MKPointAnnotation()
        let electricalPin = MKPointAnnotation()
        let cityHallPin = MKPointAnnotation()
        let kamikitadaiStaPin = MKPointAnnotation()
        let museumPin = MKPointAnnotation()
        let shrinePin = MKPointAnnotation()
        let tamakoPin = MKPointAnnotation()
        
        // ピンの座標設定
        higasiyamatosiStaPin.coordinate = CLLocationCoordinate2DMake(35.733017, 139.434828)
        botanicaiGardenPin.coordinate = CLLocationCoordinate2DMake(35.732407, 139.434765)
        bigboxPin.coordinate = CLLocationCoordinate2DMake(35.733484, 139.434225)
        electricalPin.coordinate = CLLocationCoordinate2DMake(35.735214, 139.421357)
        cityHallPin.coordinate = CLLocationCoordinate2DMake(35.745183, 139.426403)
        kamikitadaiStaPin.coordinate = CLLocationCoordinate2DMake(35.745847, 139.415895)
        museumPin.coordinate = CLLocationCoordinate2DMake(35.754921, 139.423374)
        shrinePin.coordinate = CLLocationCoordinate2DMake(35.765060, 139.441964)
        tamakoPin.coordinate = CLLocationCoordinate2DMake(35.759907, 139.439490)
        
        // タイトルを設定
        higasiyamatosiStaPin.title = "東大和市駅"
        botanicaiGardenPin.title = "東京都薬用植物園"
        bigboxPin.title = "BIGBOX東大和"
        electricalPin.title = "旧日立航空機立川工場変電所"
        cityHallPin.title = "東大和市役所"
        kamikitadaiStaPin.title = "上北台駅"
        museumPin.title = "東大和市立郷土博物館"
        shrinePin.title = "氷川神社"
        tamakoPin.title = "多摩湖"

        // mapViewにピンを追加
        mapView.addAnnotation(higasiyamatosiStaPin)
        mapView.addAnnotation(botanicaiGardenPin)
        mapView.addAnnotation(bigboxPin)
        mapView.addAnnotation(electricalPin)
        mapView.addAnnotation(cityHallPin)
        mapView.addAnnotation(kamikitadaiStaPin)
        mapView.addAnnotation(museumPin)
        mapView.addAnnotation(shrinePin)
        mapView.addAnnotation(tamakoPin)
        
        
        /*
        その他の地域
        */
        
        let shoppingStreetPin = MKPointAnnotation()
        let shoppingMallPin = MKPointAnnotation()
        
        shoppingStreetPin.coordinate = CLLocationCoordinate2DMake(35.661186, 139.667618)
        shoppingMallPin.coordinate = CLLocationCoordinate2DMake(35.810184, 139.379533)
        
        shoppingStreetPin.title = "下北沢南商店街"
        shoppingMallPin.title = "三井アウトレットパーク入間店"
        
        mapView.addAnnotation(shoppingStreetPin)
        mapView.addAnnotation(shoppingMallPin)
        
    }

    // CalloutAccessoryViewに詳細ボタンを追加
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        for view in views {
            view.rightCalloutAccessoryView = UIButton(type: UIButton.ButtonType.detailDisclosure)
        }
    }
    
    // CalloutAccessoryViewをタップしたときの処理
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
//        switch MKPointAnnotation() {
//        case higasiyamatosiStaPin:
//            performSegue(withIdentifier: "higasiyamatosiSta", sender: nil)
//        default: break
//        }
        performSegue(withIdentifier: "higasiyamatosiSta", sender: nil)
    }

}

