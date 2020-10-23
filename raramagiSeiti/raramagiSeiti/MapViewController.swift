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

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 位置情報使用の通知を表示
        locationManager.requestAlwaysAuthorization()
        
        mapView.userLocation.title = "現在地"
        
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
        let higasiyamatosiStaPin = MyPointAnnotation()
        let botanicaiGardenPin = MyPointAnnotation()
        let bigboxPin = MyPointAnnotation()
        let electricalPin = MyPointAnnotation()
        let cityHallPin = MyPointAnnotation()
        let kamikitadaiStaPin = MyPointAnnotation()
        let museumPin = MyPointAnnotation()
        let shrinePin = MyPointAnnotation()
        let tamakoPin = MyPointAnnotation()
        
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
        
        // identifierの設定
        higasiyamatosiStaPin.identifier = "gohigasiyamatosiSta"
        botanicaiGardenPin.identifier = "gobotanicaiGarden"
        bigboxPin.identifier = "gobigbox"
        electricalPin.identifier = "goelectrical"
        cityHallPin.identifier = "gocityHall"
        kamikitadaiStaPin.identifier = "gokamikitadaiSta"
        museumPin.identifier = "gomuseum"
        shrinePin.identifier = "goshrine"
        tamakoPin.identifier = "gotamako"
        

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
        
        let shoppingStreetPin = MyPointAnnotation()
        let shoppingMallPin = MyPointAnnotation()
        
        shoppingStreetPin.coordinate = CLLocationCoordinate2DMake(35.661186, 139.667618)
        shoppingMallPin.coordinate = CLLocationCoordinate2DMake(35.810184, 139.379533)
        
        shoppingStreetPin.title = "下北沢南口商店街"
        shoppingMallPin.title = "三井アウトレットパーク入間"
        
        shoppingStreetPin.identifier = "goshoppingStreet"
        shoppingMallPin.identifier = "goshoppingMall"
        
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
        
        if view.annotation is MKUserLocation {
            return
        } else {
            let seitiAnnotation:MyPointAnnotation = (view.annotation as? MyPointAnnotation)!
            
            switch seitiAnnotation.identifier{
                
            case "gohigasiyamatosiSta":
                performSegue(withIdentifier: "higasiyamatosiSta", sender: nil)
            
            case "gobotanicaiGarden":
                performSegue(withIdentifier: "botanicaiGarden", sender: nil)
            
            case "gobigbox":
                performSegue(withIdentifier: "bigbox", sender: nil)
            
            case "goelectrical":
                performSegue(withIdentifier: "electrical", sender: nil)
            
            case "gocityHall":
                performSegue(withIdentifier: "cityHall", sender: nil)
            
            case "gokamikitadaiSta":
                performSegue(withIdentifier: "kamikitadaiSta", sender: nil)
                    
            case "gomuseum":
                performSegue(withIdentifier: "museum", sender: nil)
            
            case "goshrine":
                performSegue(withIdentifier: "shrine", sender: nil)
            
            case "gotamako":
                performSegue(withIdentifier: "tamako", sender: nil)
                
            case "goshoppingStreet":
                performSegue(withIdentifier: "shoppingStreet", sender: nil)
                
            case "goshoppingMall":
                performSegue(withIdentifier: "shoppingMall", sender: nil)
            
            default: break
            }
        }
    }

}

class MyPointAnnotation : MKPointAnnotation {
    var identifier: String?
}

