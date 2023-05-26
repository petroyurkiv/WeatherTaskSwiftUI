//
//  CityWeatherRequest.swift
//  WeatherTaskSwiftUI
//
//  Created by Petro on 25.05.2023.
//

import Foundation

enum CityWeatherManagerService {
    
    static func fetchData(city: String, completion: @escaping (Result<WeatherResult, Error>) -> Void) {
        var request = URLRequest(url: URL(string: "\(NetworkSettings.baseURL)/forecast?q=\(city)&appid=\(NetworkSettings.apiKey)&units=metric")!)
        request.httpMethod = "GET"
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            decoder.dateDecodingStrategy = .formatted(dateFormatter)
            
            do {
                let result = try decoder.decode(WeatherResult.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}

