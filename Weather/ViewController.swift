//
//  ViewController.swift
//  Weather
//
//  Created by Thornton Ellis on 7/23/14.
//  Copyright (c) 2014 Thornton Ellis. All rights reserved.
//

import UIKit


class ViewController: UIViewController, NSURLConnectionDelegate{
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var search: UIButton!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject) {
        let states = state.text.lowercaseString
        let cities = city.text.lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "_", options: NSStringCompareOptions.CaseInsensitiveSearch, range: nil)
        var weatherView = segue.destinationViewController as WeatherView
        weatherView.state = states
        weatherView.city = cities
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

