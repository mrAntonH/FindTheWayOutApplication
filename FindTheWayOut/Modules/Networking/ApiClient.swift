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
    
    static func startGame(graphVertexes: Graph) -> Observable<String> {
        var request = URLRequest(url: ApiRouter.startPlay.URLPath)
        if let jsonData = try? JSONEncoder().encode(graphVertexes) {
            request.httpBody = jsonData
        }
        request.httpMethod = ApiRouter.startPlay.method.rawValue
        request.headers = ApiRouter.startPlay.headers
        
        return startGame(request: request)
    }
    
    static func checkFire(userNumberLocation: Int) -> Observable<[Int]> {
        let graphNumber = 0
        let data = UserLocationData(userLocation: userNumberLocation,
                                    graphId: graphNumber)
        var request = URLRequest(url: ApiRouter.checkFire.URLPath)
        if let jsonData = try? JSONEncoder().encode(data) {
            request.httpBody = jsonData
        }
        request.httpMethod = ApiRouter.checkFire.method.rawValue
        request.headers = ApiRouter.checkFire.headers
        
        return checkFire(request: request)
    }
    
    static func updateWay(userNumberLocation: Int) -> Observable<Way> {
        let graphNumber = 0
        let data = UserLocationData(userLocation: userNumberLocation,
                                    graphId: graphNumber)
        var request = URLRequest(url: ApiRouter.updateWay.URLPath)
        if let jsonData = try? JSONEncoder().encode(data) {
            request.httpBody = jsonData
        }
        request.httpMethod = ApiRouter.updateWay.method.rawValue
        request.headers = ApiRouter.updateWay.headers
        
        return updateWay(request: request)
    }
    
    static func deleteMap(withId: Int) -> Observable<Void> {
        var request = URLRequest(url: ApiRouter.deleteMap.URLPath)
        request.httpMethod = ApiRouter.deleteMap.method.rawValue
        request.headers = ApiRouter.deleteMap.headers
        return deleteMap(request: request)
    }

    private static func startGame(request: URLRequest) -> Observable<String> {
        return Observable<String>.create { observer in
            let request = AF.request(request)
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
    
    private static func checkFire(request: URLRequest) -> Observable<[Int]> {
        return Observable<[Int]>.create { observer in
            let request = AF.request(request)
                .responseJSON(completionHandler: { response in
                    switch response.result {
                    case .success:
                        guard let data = response.data else {
                            observer.onError(ApiError.notFound)
                            return
                        }
                        do {
                            let newFire = try JSONDecoder()
                                .decode(FireCheckingFetchData.self,
                                        from: data)
                            observer.onNext(newFire.newFires)
                        } catch {
                            observer.onError(error)
                        }
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
    
    private static func updateWay(request: URLRequest) -> Observable<Way> {
        return Observable<Way>.create { observer in
            let request = AF.request(request)
                .responseJSON(completionHandler: { response in
                    switch response.result {
                    case .success:
                        guard let data = response.data else {
                            observer.onError(ApiError.notFound)
                            return
                        }
                        do {
                            let way = try JSONDecoder()
                                .decode(Way.self,
                                        from: data)
                            observer.onNext(way)
                        } catch {
                            observer.onError(error)
                        }
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
    
    private static func deleteMap(request: URLRequest) -> Observable<Void> {
        return Observable<Void>.create { observer in
            let request = AF.request(request)
                .responseJSON(completionHandler: { response in
                    switch response.result {
                    case .success:
                        observer.onNext(())
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
