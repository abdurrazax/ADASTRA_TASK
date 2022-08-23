//
//  CategoryTVC.swift
//  ADASTRA_iOS_TASK
//
//  Created by Abdur Razaq on 24/08/2022.
//

import UIKit

class CategoryTVC: UITableViewCell {

    @IBOutlet weak var lblCategory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func settingData(data: CategoryModel) {
        lblCategory.text = data.category ?? ""
    }
    
}
