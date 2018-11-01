//
//  AlamofireObjectMapper+PromiseKit.swift
//  AlamofireObjectMapperPromise
//
//  Created by ZhihuaZhang on 2018/11/01.
//

import Alamofire
import ObjectMapper
import AlamofireObjectMapper
import PromiseKit

extension DataRequest {
    enum MapError: Error {
        case unknown
    }
    
    public func responseObject<T: BaseMappable>(queue: DispatchQueue? = nil, keyPath: String? = nil, mapToObject object: T? = nil, context: MapContext? = nil) -> Promise<T> {
        return Promise<T> { seal in
            responseObject(queue: queue, keyPath: keyPath, mapToObject: object, context: context) { (res: DataResponse<T>) in
                if let error = res.error {
                    seal.reject(error)
                    return
                }
                
                if let value = res.value {
                    seal.fulfill(value)
                } else {
                    seal.reject(MapError.unknown)
                }
            }
        }
    }
    
    public func responseArray<T: BaseMappable>(queue: DispatchQueue? = nil, keyPath: String? = nil, context: MapContext? = nil) -> Promise<[T]> {
        return Promise<[T]> { seal in
            responseArray(queue: queue, keyPath: keyPath, context: context, completionHandler: { (res: DataResponse<[T]>) in
                if let error = res.error {
                    seal.reject(error)
                    return
                }
                
                seal.fulfill(res.value ?? [T]())
            })
        }
    }
}
