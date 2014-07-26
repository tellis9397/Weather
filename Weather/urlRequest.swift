//
//  urlRequest.swift
//  Weather
//
//  Created by Thornton Ellis on 7/24/14.
//  Copyright (c) 2014 Thornton Ellis. All rights reserved.
//

import Foundation
import UIKit

class urlRequest: NSObject {
    
    let urlPath: NSString = "api.worldweatheronline.com/free/v1/weather.ashx?q=London&format=json&num_of_days=5&key=487b7b9e816c8e4ae87bccab6220ec96ba86eb13"
    var url: NSURL = NSURL(string: urlPath?)
    var request1: NSURLRequest = NSURLRequest(URL: url)
    let queue:NSOperationQueue = NSOperationQueue()
    
    
    NSURLConnection.sendAsynchronousRequest(request1, queue: queue, completionHandler:{ (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
        /* Your code */
    
        var err: NSError
    
        var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
        println("AsSynchronous\(jsonResult)")
    
    
    })
}