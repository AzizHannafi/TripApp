//
//  PlaceService.swift
//  TripApp
//
//  Created by Orangeodc11 on 27/4/2022.
//

import Foundation

class PlaceService{
    func getAll(url:String,method:String,header:[String:String] = [:]) async throws -> Any!
    {
        guard let url = URL(string: url) else {return nil}
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method
        //urlRequest.httpBody = try JSONEncoder().encode(<#T##value: Encodable##Encodable#>)
        urlRequest.allHTTPHeaderFields = header
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        print("mydata",String(data: data, encoding: .utf8))
        
        if let response = (response as? HTTPURLResponse)
        {
            if response.statusCode == 200
            {
                return try JSONDecoder().decode([PlaceModel].self, from:data)
                                               
                                                }else{return nil}
                                                }else{return nil}
    }
    
    
    
    func test() -> (String,Int)
    {
        
        
        return ("",5)
    }
    
    
    
}
