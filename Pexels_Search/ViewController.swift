//
//  ViewController.swift
//  Pexels_Search
//
//  Created by 동준 on 8/2/24.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AlamofireManager
            .shared
            .session
            .request(SearchRouter.searchCurated)
            .responseJSON(completionHandler: { response in
                debugPrint(response)
            })
    }
}
