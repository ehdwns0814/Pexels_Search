//
//  BaseInterceptor.swift
//  Pexels_Search
//
//  Created by 동준 on 8/2/24.
//

import Foundation
import Alamofire

class BaseInterceptor: RequestInterceptor {
    
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        print("BaseInterceptor - adapt() called")
        
        var request = urlRequest
        
        request.addValue("D3rKGbemsRV0hJA4kUXmOU1bsdp5BbEXYf0NMrb6UJRqFgRnI8FPSiCj", forHTTPHeaderField: "Authorization")
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Accept")
        
        completion(.success(request))
    }
    
    func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) {
        print("BaseInterceptor - retry called()")
        
        completion(.doNotRetry)
    }
}
