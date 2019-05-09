//
//  LoginService.swift
//  wola
//
//  Created by Juanra Fernández on 31/01/2019.
//  Copyright © 2019 JR. All rights reserved.
//

import UIKit
import Alamofire

class LoginService: NSObject {

    public func login (idToken: String) {
        let endpoint = URL(string: "https://")
        let params = ["idtoken": idToken]
        
        Alamofire.request(endpoint!, method: .post, parameters: params,encoding: JSONEncoding.default, headers: nil).validate(contentType: ["application/x-www-form-urlencoded"]).responseJSON {
            response in
            switch response.result {
            case .success:
                print(response)
                
                break
            case .failure(let error):
                
                print(error)
            }
        }
    }
    
    public func signin (name: String, surname: String, email: String, password: String) {
        let endpoint = URL(string: "http://localhost:3800/api/register")
        let params = ["name":name,
                      "surname":surname,
                      "email": email,
                      "password": password]
        let headers = [
            "Content-Type": "application/x-www-form-urlencoded"
        ]
        
        Alamofire.request(endpoint!, method: .post, parameters: params, headers: headers).validate().responseJSON {
            response in
            switch response.result {
            case .success:
                print(response)
                break
            case .failure(let error):
                print(error)
            }
        }
    }
}
