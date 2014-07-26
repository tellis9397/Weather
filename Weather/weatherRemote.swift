//
//  WeatherRemote.swift
//  Weather
//
//  Created by Thornton Ellis on 7/24/14.
//  Copyright (c) 2014 Thornton Ellis. All rights reserved.
//

import Foundation
import UIKit
protocol APIControllerProtocol{
    func didRecieveAPIResults(results: NSDictionary)
}
class WeatherRemote: NSObject{
    var delegate: APIControllerProtocol?
    
    init(delegate: APIControllerProtocol?){
        self.delegate = delegate
    }
    func getWeather(state: NSString, city: NSString) {
        let urlPath: NSString = "http://api.wunderground.com/api/276e972bac81a809/conditions/q/\(state)/\(city).json"
      //  let urlPath2: NSString = "http://api.wunderground.com/api/276e972bac81a809/forecast/q/CA/San_Francisco.json"
        var url: NSURL = NSURL(string: urlPath)
     //   var url2: NSURL = NSURL(string: urlPath2)
        var request1: NSURLRequest = NSURLRequest(URL: url)
     //   var request2: NSURLRequest = NSURLRequest(URL: url2)
        let queue:NSOperationQueue = NSOperationQueue()
    
    
        NSURLConnection.sendAsynchronousRequest(request1, queue: queue, completionHandler:{ (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            /* Your code */
    
            var err: NSError
    
            let jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
            //println("AsSynchronous\(jsonResult)")
            self.delegate?.didRecieveAPIResults(jsonResult)
            })
        
//        NSURLConnection.sendAsynchronousRequest(request2, queue: queue, completionHandler:{ (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
//            /* Your code */
//            
//            var err: NSError
//            
//            let jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
//           // println("AsSynchronous\(jsonResult)")
//            let results = jsonResult["forcast"]! as NSDictionary
//            print(results)
//            })
    }
}