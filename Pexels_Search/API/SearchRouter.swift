//
//  SearchRouter.swift
//  Pexels_Search
//
//  Created by 동준 on 8/2/24.
//

import Foundation
import Alamofire

enum SearchRouter: URLRequestConvertible {
    case searchPhotos(term: String)
    case searchCurated

    var baseURL: URL {
        return URL(string: API.BASE_URL)!
    }

    var method: HTTPMethod {
        switch self {
        case .searchPhotos, .searchCurated:
            return .get
        }
    }

    var endPoint: String {
        switch self {
        case .searchPhotos:
            return "search/"
        case .searchCurated:
            return "curated/"
        }
    }
    
    var parameters: [String: String]? {
        switch self {
        case let .searchPhotos(term):
            return ["query": term]
        case .searchCurated:
            return nil
        }
    }

    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(endPoint)
        
        print("SearchRouter - asURLRequest() \(url)")
        var request = URLRequest(url: url)
        
        request.method = method

        if let parameter = parameters {
            request = try URLEncodedFormParameterEncoder().encode(parameter, into: request)
        }
        
        return request
    }
}
