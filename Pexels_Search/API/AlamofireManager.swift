//
//  AlamofireManager.swift
//  Pexels_Search
//
//  Created by 동준 on 8/2/24.
//

import Foundation
import Alamofire

final class AlamofireManager {
    
    static let shared = AlamofireManager()
    
    // 인터셉터
    let interceptors = Interceptor(interceptors: [
        BaseInterceptor()
    ])
    
    // 로거 설정
    let monitors: [EventMonitor] = [Logger()]
    
    var session: Session
    
    private init() {
        self.session = Session(interceptor: interceptors, eventMonitors: monitors)
    }
}
