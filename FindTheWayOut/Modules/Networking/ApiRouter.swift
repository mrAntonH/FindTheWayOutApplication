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
    
    static let baseUrl = "http://YourLocalIP:8081/api/v1/searchExit"
    
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

enum ApiRouter: URLRequestConvertible {
    case testRequest
    
    //MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try ApiConstants.baseUrl.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        urlRequest.httpMethod = method.rawValue
        
        urlRequest.setValue(ApiConstants.ContentType.json.rawValue,
                            forHTTPHeaderField: ApiConstants.HttpHeaderField.acceptType.rawValue)
        urlRequest.setValue(ApiConstants.ContentType.json.rawValue,
                            forHTTPHeaderField: ApiConstants.HttpHeaderField.contentType.rawValue)
        
        let encoding: ParameterEncoding = {
            switch method {
            case .get:
                return URLEncoding.default
            default:
                return JSONEncoding.default
            }
        }()
        
        return try encoding.encode(urlRequest, with: parameters)
    }
    
    private var method: HTTPMethod {
        switch self {
        case .testRequest:
            return .post
        }
    }
    
    private var path: String {
        switch self {
        case .testRequest:
            return "/testing"
        }
    }
    
    private var parameters: Parameters? {
        switch self {
        case .testRequest:
            return [:]
        }
    }
}
