//
//  Logger.swift
//  Pexels_Search
//
//  Created by 동준 on 8/2/24.
//

import Foundation
import Alamofire

final class Logger: EventMonitor {
    
    let queue = DispatchQueue(label: "APILog")
    
    func requestDidResume(_ request: Request) {
        print("Logger - requestDidResume called()")
        debugPrint(request)
    }
    
    func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) {
        print("Logger - didParseResponse called()")
        
        debugPrint(response)
    }
}
