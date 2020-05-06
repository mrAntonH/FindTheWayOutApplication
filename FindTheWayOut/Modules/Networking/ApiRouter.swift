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
    
    static let baseUrl = "http://192.168.1.65:8081/api/v1/searchExit"
    
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

enum ApiRouter {
    case startPlay
    case checkFire
    case updateWay
    case deleteMap
        
    var method: HTTPMethod {
        switch self {
        case .startPlay:
            return .post
        case .checkFire:
            return .post
        case .updateWay:
            return .post
        case .deleteMap:
            return .delete
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
        case .deleteMap:
            return "/deleteMap"
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
        case .deleteMap:
            return HTTPHeaders([headersConst.contentType.rawValue: contentType.json.rawValue])
        }
    }
}
