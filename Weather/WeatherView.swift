//
//  File.swift
//  Weather
//
//  Created by Thornton Ellis on 7/25/14.
//  Copyright (c) 2014 Thornton Ellis. All rights reserved.
//

import Foundation
import UIKit
class WeatherView: UIViewController, APIControllerProtocol{
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    var state: String?
    var city: String?
    var temp: Int?
    var forcast: String?
    var today: [Forcast] = []
    lazy var weather: WeatherRemote = WeatherRemote(delegate: self)

    
    func didRecieveAPIResults(results: NSDictionary) {
        
        if results.count > 0 {
            if let allResults = results["current_observation"] as? NSDictionary{
                println(allResults["temp_f"])
                
            }else{
                println("Invalid City/State")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weather.getWeather(state!, city: city!)
    }
}