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
    
  
    var Productprice = ""
    var Producttitle = ""
    var Productdescription = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

       settingData()
    }
    
    
    func settingData(){
        bgView.layer.cornerRadius = 10
        lblPrice.text = Productprice + " $"
        lblTitle.text = Producttitle
        lblDescription.text = Productdescription
        imgView.sd_setImage(with: URL(string: image ))
        
    }
}
