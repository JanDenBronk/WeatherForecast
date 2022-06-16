//
//  TableVC.swift
//  Weather
//
//  Created by Максим Нестерев on 16.06.2022.
//

import UIKit

class TableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchWeather()
        
    }
    
    func fetchWeather() {
        
        let urlPlace: String = "https://api.weather.yandex.ru/v2/forecast?lat=62.027221&lon=129.732178"
        guard let url = URL(string: urlPlace) else { return }
        
        var request = URLRequest(url: url, timeoutInterval: Double.infinity)
        request.addValue("c35120f4-0e6b-4304-a0d8-6a362886eb0e", forHTTPHeaderField: "X-Yandex-API-Key")
        request.httpMethod = "get"
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }
}
