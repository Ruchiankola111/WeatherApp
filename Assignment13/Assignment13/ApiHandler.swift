//
//  ApiHandler.swift
//  Assignment13
//
//  Created by DCS on 28/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation

class ApiHandler{
    
    static let shared = ApiHandler()
    
    func searchCity(with name:String) -> [Citydetail]{
        
        if let url = URL(string: "http://api.weatherapi.com/v1/current.json?key=9ed7cfcb9dac424e929134511210707&q=\(name)")
        {
            
            if let data = try? Data(contentsOf: url)
            {
                
                let decoder = JSONDecoder()
                
                if let jdata = try? decoder.decode(Citydetail.self,from: data)
                {
                    return [jdata]
                }
            }
        }
        return [Citydetail]()
    }
}
