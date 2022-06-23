//
//  WeatherData.swift
//  Weather
//
//  Created by Максим Нестерев on 20.06.2022.
//

import Foundation

struct WeatherData: Decodable {
    
    let info: Info
    let fact: Fact
    let forecasts: [Forecast]
    
}

struct Info: Decodable {
    let url: String
}

struct Fact: Decodable {
    let temp: Int
    let icon: String
    let condition: String
    
    enum CodingKeys: String, CodingKey {
        case temp
        case icon
        case condition
    }
}

struct Forecast: Decodable {
    let week: Int
}
