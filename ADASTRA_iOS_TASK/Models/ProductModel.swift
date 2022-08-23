//
//  ProductModel.swift
//  ADASTRA_iOS_TASK
//
//  Created by Abdur Razaq on 23/08/2022.
//


import Foundation

struct CategoryModel: Codable {

    let category : String?
    let descriptionField : String?
    let id : Int?
    let image : String?
    let price : Float?
    let title : String?


    enum CodingKeys: String, CodingKey {
        case category = "category"
        case descriptionField = "description"
        case id = "id"
        case image = "image"
        case price = "price"
        case title = "title"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        price = try values.decodeIfPresent(Float.self, forKey: .price)
        title = try values.decodeIfPresent(String.self, forKey: .title)
    }


}

