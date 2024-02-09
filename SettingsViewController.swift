//
//  SettingsViewController.swift
//  FireBaseInstaClone
//
//  Created by Muhammed Emir Erdem on 18.11.2023.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light

        // Do any additional setup after loading the view.
    }
    



    @IBAction func logoutClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("error")
        }
        
    }
    

}
