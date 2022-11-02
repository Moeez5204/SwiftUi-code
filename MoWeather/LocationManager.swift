//
//  LocationManager.swift
//  MoWeather2
//
//  Created by Abdul-Moeez on 02/11/2022.
//

import Foundation
import CoreLocation

class LocationManager :  NSObject , ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location : CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
        
    }
    
    func requestLoaction() {
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations :[CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    
}
