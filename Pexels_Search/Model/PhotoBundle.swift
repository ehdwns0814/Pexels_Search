//
//  PhotoBundle.swift
//  Pexels_Search
//
//  Created by 동준 on 8/3/24.
//

import Foundation

struct PhotoBundle {
    let page: Int
    let perPage: Int
    let photos: [Photo]
    let totalResult: Int
}
