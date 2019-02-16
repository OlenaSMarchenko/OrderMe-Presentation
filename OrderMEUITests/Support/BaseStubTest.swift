//
//  BaseStubTest.swift
//  OrderMEUITests
//
//  Created by Natalia on 2/15/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest
import EnvoyAmbassador
import Embassy

class BaseStubTest: XCTestCase {
    
    let app = XCUIApplication()
    let interface = "http://[::1]"
    let port = 8282
    
    var server: DefaultHTTPServer?
    
    static let oceanSeafood = "Ocean Seafood"
    static let beautyEssex = "Beauty & Essex"
    static let republique = "Republique"
    static let hakkasan = "Hakkasan"
    
    override func setUp() {
        super.setUp()
        setupServer()
        app.launchArguments += ["noAuth"]
        app.launchEnvironment["TEST_BASEURL"] = "\(interface):\(port)"
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        server?.stopAndWait()
    }
    
    func setupServer() {
        do {
            let loop = try SelectorEventLoop(selector: try KqueueSelector())
            
            let router = OrderMeRouter()
            server = DefaultHTTPServer(eventLoop: loop, port: port, app: router.app)
            
            try server?.start()
            
            DispatchQueue.global(qos: .background).async {
                loop.runForever()
            }
            
        } catch {
            XCTFail("Error in starting local server")
        }
    }
}
