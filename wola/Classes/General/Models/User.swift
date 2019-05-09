//
//  User.swift
//  wola
//
//  Created by Juanra Fernández on 08/04/2019.
//  Copyright © 2019 JR. All rights reserved.
//

import Foundation

class User {
    
    let name: String?
    let token: String?
    
    init(name: String?, token: String?) {
        self.name = name
        self.token = token
    }
}
