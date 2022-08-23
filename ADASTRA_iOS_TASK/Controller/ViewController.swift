//
//  ViewController.swift
//  ADASTRA_iOS_TASK
//
//  Created by Abdur Razaq on 23/08/2022.
//

import UIKit

class ViewController: UIViewController {

    let call = ApiHandler()
    var categoryData = [CategoryModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        call.apiCall { data in
            self.categoryData = data
            print(data)
        } failure: { error in
            print(error.localizedDescription)
        }

    }


}

