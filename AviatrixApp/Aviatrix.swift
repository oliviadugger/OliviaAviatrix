//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var fuelCost = 0.0
    var price = 0.0
    var numGallon = 0.0
    var fuelLevel = 5000.0
    var maxFuel = 5000
    var milesPerGallon = 0.4
    var distanceTraveled = 0
    var location = "St. Louis"
    var data = AviatrixData()
    var author = "Olivia"
    init (authorName : String){
        
        author = authorName
        
    }
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double{
        
        numGallon = Double(maxFuel) - fuelLevel
        fuelLevel = Double(maxFuel)
        fuelCost += data.fuelPrices[plane.location]!

        return numGallon
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: location)
        
         fuelLevel -= Double(distanceTraveled) / milesPerGallon
        
        location = destination
    }
    
    func distanceTo(target : String, current : String) -> Int {
    
        return data.knownDistances[current]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
