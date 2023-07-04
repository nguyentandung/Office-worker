//
//  SplashVC.swift
//  Office-Worker
//
//  Created by Nguyen Tan Dung on 20/06/2023.
//

import UIKit

class SplashVC: UIViewController {
    
    let viewModel = SplashVM()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.checkAuthUser { [weak self] auth in
            auth ? self?.moveToHomescreen() : self?.moveToLoginScreen()
        }
    }
    
    func moveToLoginScreen() {
        let vc = LoginVC(nibName: "LoginVC", bundle: nil)
        AppHelper().changeRootViewController(to: vc)
    }
    
    func moveToHomescreen() {
        
    }
    
}
