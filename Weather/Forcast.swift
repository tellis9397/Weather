//
//  Forcast.swift
//  Weather
//
//  Created by Thornton Ellis on 7/25/14.
//  Copyright (c) 2014 Thornton Ellis. All rights reserved.
//

import Foundation

class Forcast{
    var temp: Int?
    var forcast: String?
    
    init(temp:Int, forcast: String){
        self.temp = temp
        self.forcast = forcast
    }
}