//
//  SignInViewController.swift
//  wola
//
//  Created by Juanra Fernández on 03/04/2019.
//  Copyright © 2019 JR. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var labelAlias: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldSurname: UITextField!
    @IBOutlet weak var textFieldAlias: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var buttonSave: UIButton!
    
    let interactor = SignInInteractor()

    /*****************************************************/
    // MARK: - LIFECYCLE METHODS
    /*****************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldName.delegate = self
        textFieldSurname.delegate = self
        textFieldAlias.delegate = self
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
    }
    
    /*****************************************************/
    // MARK: - INTERFACE EVENTS
    /*****************************************************/
    @IBAction func buttonBack_clicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func buttonSave_clicked(_ sender: Any) {
        interactor.signin(name: textFieldName.text!, surname: textFieldSurname.text!, email: textFieldEmail.text!, password: textFieldPassword.text!)
    }
    
    /*****************************************************/
    // MARK: - TextField Delegate
    /*****************************************************/
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}
