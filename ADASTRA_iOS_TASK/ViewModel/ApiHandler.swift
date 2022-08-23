//
//  ApiHandler.swift
//  ADASTRA_iOS_TASK
//
//  Created by Abdur Razaq on 23/08/2022.
//

import Foundation

struct ApiHandler {
    
    func apiCall(success:@escaping ([CategoryModel])->Void,failure:@escaping (Error)->Void){
        guard let url = URL(string: "https://fakestoreapi.com/products") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error
            in
            print(response)
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            guard let data = data else {
                return
            }
            do {
                let output = try JSONDecoder().decode([CategoryModel].self, from: data)
                //  print(output)
                success(output)
            }
            catch(let error)
            {
                print(error)
                print(error.localizedDescription)
                failure(error)
            }
        }.resume()
    }
}
