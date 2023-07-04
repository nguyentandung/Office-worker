//
//  SplashVM.swift
//  Office-Worker
//
//  Created by Nguyen Tan Dung on 20/06/2023.
//

import UIKit

class SplashVM {
    
    func checkAuthUser(completion:@escaping (Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            completion(false)
        })
    }
    
}
