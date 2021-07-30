//
//  ImageNetworkManager.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import SwiftUI
final class ImageNetworkManager {
    static let shared = ImageNetworkManager()
    private let cache = NSCache<NSString,UIImage>()
    
    func downloadImage(fromURLString urlString: String, completion: @escaping (UIImage?)-> Void){
        let cacheKey = NSString(string: urlString)
        if let image = cache.object(forKey: cacheKey){
            completion(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data , let image = UIImage(data: data) else {
                completion(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
            completion(image)
            
        }
        task.resume()
        
    }
}
