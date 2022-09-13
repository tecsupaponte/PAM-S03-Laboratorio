//
//  Auto.swift
//  Semana03-2022-2
//
//  Created by Javier Aponte on 10/09/22.
//

import Foundation

class Auto {
    var brand: String = "Toyota"
    var model: String = "Pickup"
    var color: String = "Negro"
    var speed: Float = 60.5


    func move(moreSpeed: Float) {
        speed += moreSpeed
        
        if speed > 160 {
            stop()
        }
    }
    
    func slowDown(lessSpeed: Float) {
        
        if speed - lessSpeed < 0 {
            stop()
        } else {
            speed -= lessSpeed
        }
    }
    
    func stop() {
        print("Auto stopped.")
        speed = 0.0
    }
}
