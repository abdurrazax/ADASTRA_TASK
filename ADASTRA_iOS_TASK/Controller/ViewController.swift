//
//  ViewController.swift
//  ADASTRA_iOS_TASK
//
//  Created by Abdur Razaq on 23/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    let call = ApiHandler()
    var categoryData = [CategoryModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "CategoryTVC", bundle: nil), forCellReuseIdentifier: "CategoryTVC")
        tableView.delegate = self
        tableView.dataSource = self
        
        call.apiCall { data in
            self.categoryData = data
            print(data)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } failure: { error in
            print(error.localizedDescription)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTVC") as! CategoryTVC
        cell.settingData(data: self.categoryData[indexPath.row])
        return cell
    }
    
}
