//
//  AppHelper.swift
//  Office-Worker
//
//  Created by Nguyen Tan Dung on 07/04/23.
//

import UIKit

class AppHelper {
    static let shared = AppHelper()
    
    func changeRootViewController(to viewController: UIViewController) {
        UIApplication.shared.windows.first?.rootViewController = viewController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}
