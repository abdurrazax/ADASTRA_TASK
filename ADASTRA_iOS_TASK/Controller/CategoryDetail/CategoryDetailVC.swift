//
//  CategoryDetailVC.swift
//  ADASTRA_iOS_TASK
//
//  Created by Abdur Razaq on 24/08/2022.
//

import UIKit
import SDWebImage

class CategoryDetailVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var categoryDetail: CategoryModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingData(data: self.categoryDetail!)
    }
    
    
    func settingData(data: CategoryModel){
        bgView.layer.cornerRadius = 10
        lblPrice.text = String(data.price ?? 0.0) + " $"
        lblTitle.text = data.title ?? ""
        lblDescription.text = data.descriptionField ?? ""
        imgView.sd_setImage(with: URL(string: data.image ?? "" ))
        imgView.sd_imageIndicator = SDWebImageActivityIndicator.gray
        
    }
}
