//
//  LoginViewController.swift
//  wola
//
//  Created by Juanra Fernández on 19/12/2018.
//  Copyright © 2018 JR. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate {

    //@IBOutlet weak var signInButton: GIDSignInButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        /*GIDSignIn.sharedInstance()?.uiDelegate = self
        
        let signInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        signInButton.center = view.center
        
        view.addSubview(signInButton)*/
        
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
        
    }
    
    @IBAction func buttonLoginGoogle_clicked(_ sender: Any) {
        GIDSignIn.sharedInstance()?.delegate = self
        GIDSignIn.sharedInstance()?.uiDelegate = self;
        GIDSignIn.sharedInstance()?.signIn()
    }
    
    @IBAction func buttonLogout_clicked(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
    }
    
    /*****************************************************/
    // MARK: - Google delegate
    /*****************************************************/    
    func sign(_ signIn: GIDSignIn!,
              present viewController: UIViewController!) {
        self.present(viewController, animated: true, completion: nil)
    }
    
    public func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!,
                     withError error: Error!) {
        if (error == nil) {
            // Perform any operations on signed in user here.
            let userId = user.userID                  // For client-side use only!
            let idToken = user.authentication.idToken // Safe to send to the server
            let fullName = user.profile.name
            let givenName = user.profile.givenName
            let familyName = user.profile.familyName
            let email = user.profile.email
            // ...
        } else {
            print("\(error)")
        }
    }
}
