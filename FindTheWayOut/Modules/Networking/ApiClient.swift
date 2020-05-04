//
//  ApiClient.swift
//  FindTheWayOut
//
//  Created by Антон Швец on 03/05/2020.
//  Copyright © 2020 Антон Швец. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

class ApiClient {
    
    static func testRequest() -> Observable<String> {
        return request(ApiRouter.testRequest)
    }
    
    private static func request(_ urlConvertible: URLRequestConvertible) -> Observable<String> {
        return Observable<String>.create { observer in
            let request = AF.request(urlConvertible)
                .responseString(completionHandler: { response in
                    switch response.result {
                    case .success(let value):
                        observer.onNext(value)
                        observer.onCompleted()
                    case .failure(let error):
                        switch response.response?.statusCode {
                        case 403:
                            observer.onError(ApiError.forbidden)
                        case 404:
                            observer.onError(ApiError.notFound)
                        case 409:
                            observer.onError(ApiError.conflict)
                        case 500:
                            observer.onError(ApiError.internalServerError)
                        default:
                            observer.onError(error)
                        }
                    }
                })
            return Disposables.create {
                request.cancel()
            }
        }
    }
}
