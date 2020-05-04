//
//  ApiRouter.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 03/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation
import Alamofire

struct ApiConstants {
    
    static let baseUrl = "http://172.20.10.5:8081/api/v1/searchExit"
    
    struct Parameters {
        static let userId = "userId"
    }
    
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    enum ContentType: String {
        case json = "application/json"
    }
}

enum ApiRouter { //URLConvertible
    case startPlay
    case checkFire
    case updateWay
        
    var method: HTTPMethod {
        switch self {
        case .startPlay:
            return .post
        case .checkFire:
            return .post
        case .updateWay:
            return .post
        }
    }
    
    var URLPath: URL {
        return URL(string: ApiConstants.baseUrl + path)!
    }
    
    private var path: String {
        switch self {
        case .startPlay:
            return "/sendstartplay"
        case .checkFire:
            return "/createfire"
        case .updateWay:
            return "/sendplaystatus"
        }
    }
    
    typealias headersConst = ApiConstants.HttpHeaderField
    typealias contentType = ApiConstants.ContentType
    
    var headers: HTTPHeaders {
        switch self {
        case .startPlay:
            return HTTPHeaders([headersConst.contentType.rawValue: contentType.json.rawValue])
        case .checkFire:
            return HTTPHeaders([headersConst.contentType.rawValue: contentType.json.rawValue])
        case .updateWay:
            return HTTPHeaders([headersConst.contentType.rawValue: contentType.json.rawValue])
        }
    }
}
