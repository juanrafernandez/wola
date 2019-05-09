//
//  SignInInteractor.swift
//  wola
//
//  Created by Juanra Fernández on 03/04/2019.
//  Copyright © 2019 JR. All rights reserved.
//

import UIKit

final class SignInInteractor {
    let service = LoginService()
    
    func signin (name: String, surname: String, email: String, password: String) {
        service.signin(name: name, surname: surname, email: email, password: password)
    }
}
