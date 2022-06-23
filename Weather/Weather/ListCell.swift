//
//  ListCell.swift
//  Weather
//
//  Created by Максим Нестерев on 23.06.2022.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet var nameCityLabel: UILabel!
    @IBOutlet var conditionCityLabel: UILabel!
    @IBOutlet var tempCityLabel: UILabel!
    
    func configure(weather: Weather) {
        
        self.nameCityLabel.text = weather.name
        self.conditionCityLabel.text = weather.conditionText
        self.tempCityLabel.text = weather.temperatureString
    }
    

}
