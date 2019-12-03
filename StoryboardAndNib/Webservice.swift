//
//  Webservice.swift
//  
//
//  Created by Daniel Hjärtström on 2019-11-28.
//

import UIKit
import Alamofire
import ObjectMapper

class Webservice<T: Mappable>: NSObject {

    class func fetch(urlString: String, completion: @escaping (Swift.Result<[T], Error>) -> Void) {
        Alamofire.request(urlString, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            
            if let error = response.error {
                print(error.localizedDescription)
                completion(.failure(error))
                return
            }
            
            if let json = response.result.value as? Array<[String: Any]> {
                let animals = Mapper<T>().mapArray(JSONArray: json)
                completion(.success(animals))
            }
            
        }
    }
}
