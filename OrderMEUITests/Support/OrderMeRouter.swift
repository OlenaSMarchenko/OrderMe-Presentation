//
//  OrderMeRouter.swift
//  OrderMEUITests
//
//  Created by Natalia on 2/15/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest
import EnvoyAmbassador
import Embassy

class OrderMeRouter: Router {
    static let places = "/places"
    
    override init() {
        super.init()
        setupPlacesRouters()
    }
    
    func setupPlacesRouters() {
        self[OrderMeRouter.places] = JSONResponse { _ -> Any in
            return [
                [
                    "name": "Republique",
                    "imagePath": "https://resizer.otstatic.com/v2/photos/large/25178655.jpg",
                    "phone": "+1 310-362-6115",
                    "id": 3,
                    "latitude": "34.064198",
                    "longitude": "-118.343863",
                    "address": "624 South La Brea Ave, LA, CA, USA"
                ],
                [
                    "name": "Ocean Seafood",
                    "imagePath": "https://cbsla.files.wordpress.com/2016/05/cafe-del-rey-interior.png",
                    "phone": "+1 213-687-3088",
                    "id": 4,
                    "latitude": "34.062270",
                    "longitude": "-118.239631",
                    "address": "750 N Hill St, LA, CA, USA"
                ],
                [
                    "name": "Hakkasan",
                    "imagePath": "http://hauteliving.com/wp-content/uploads/2014/11/Hakkasan-sf_bar.jpg",
                    "phone": "+1 415-829-8148",
                    "id": 39,
                    "latitude": "34.062270",
                    "longitude": "-118.239631",
                    "address": "1 Kearny St, San Francisco, CA"
                ]
            ]
        }
    }
}
