//
//  DetailViewController.swift
//  Weather
//
//  Created by Максим Нестерев on 23.06.2022.
//

import UIKit
import SwiftSVG

class DetailViewController: UIViewController {

    
    @IBOutlet var nameCityLabel: UILabel!
    @IBOutlet var viewCity: UIView!
    @IBOutlet var conditionLabel: UILabel!
    @IBOutlet var tempCityLabel: UILabel!
    
    @IBOutlet var saturdayCityLabel: UILabel!
    @IBOutlet var sundayCityLabel: UILabel!
    @IBOutlet var mondayCityLabel: UILabel!
    
    @IBOutlet var saturdayTempLabel: UILabel!
    @IBOutlet var sundayTempLabel: UILabel!
    @IBOutlet var mondayTempLabel: UILabel!
    
    var weatherModel: Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshLabels()
    }
    
    func refreshLabels() {
        
        nameCityLabel.text = weatherModel?.name
        
        let url = URL(string: "https://yastatic.net/weather/i/icons/funky/dark/\(weatherModel!.conditionCode).svg")
        
        let weatherImage = UIView(SVGURL: url!) {(image) in
            image.resizeToFit(self.viewCity.bounds)
        }
        
        self.viewCity.addSubview(weatherImage)
        
        conditionLabel.text = weatherModel?.conditionText
        tempCityLabel.text = weatherModel?.temperatureString
    }
}
