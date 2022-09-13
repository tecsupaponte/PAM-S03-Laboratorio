//
//  ViewController.swift
//  Semana03-2022-2
//
//  Created by Javier Aponte on 10/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    let auto: Auto = Auto() 
	
    @IBOutlet weak var lblBrand: UILabel!
    @IBOutlet weak var lblModel: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblSpeed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels(auto: auto)
    }
    @IBAction func onTapNewCar(_ sender: UIButton) {
        auto.brand = "Nissan"
        auto.model = "Frontier"
        auto.color = "Rojo"
        auto.speed = 50.3
        setUpLabels(auto: auto)
    }
    
    @IBAction func onTapAccelerate(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...100)
        auto.move(moreSpeed: newSpeed)        
        setUpLabels(auto: auto)
    }
    
    @IBAction func onTapSlowDown(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...100)
        auto.slowDown(lessSpeed: newSpeed)
        setUpLabels(auto: auto)
    }
    
    @IBAction func onTapStop(_ sender: UIButton) {
        auto.stop()
        setUpLabels(auto: auto)
    }
    
    func setUpLabels(auto: Auto) {
        lblBrand.text = auto.brand
        lblModel.text = auto.model
        lblColor.text = auto.color
        lblSpeed.text = String(auto.speed)
    }
}

