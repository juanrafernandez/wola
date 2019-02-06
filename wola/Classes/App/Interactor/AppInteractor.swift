//
//  AppInteractor.swift
//  wola
//
//  Created by Juanra Fernández on 20/12/2018.
//  Copyright © 2018 JR. All rights reserved.
//

import UIKit

protocol AppInteractorInput: class {
    func signIn ()
}

protocol AppInteractorOutput: class {
    func appInteractorDidSignIn ()
    func appInteractorDidSignInError ()
}

class AppInteractor: NSObject, AppInteractorInput {
    var dataManager: AppDataManager?
    weak var output:AppInteractorOutput?
    
    /*init() {
        super.init()
        dataManager = AppDataManager.shared()
    }*/
    
    

    func signIn() {
        
    }
}
