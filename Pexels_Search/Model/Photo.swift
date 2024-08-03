//
//  Photo.swift
//  Pexels_Search
//
//  Created by 동준 on 8/3/24.
//

import Foundation

struct Photo {
    let id: Int
    let imageWitdth: Int
    let imageHeight: Int
    let user: Photographer
    let avgColor: String
    let imageURL: ImageURLSet
    let liked: Bool
    let description: String
}
