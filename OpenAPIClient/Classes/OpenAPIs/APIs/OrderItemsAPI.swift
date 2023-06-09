//
// OrderItemsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OrderItemsAPI {

    /**

     - parameter id: (path)  
     - parameter apiVersion: (query)  (optional)
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func orderItemsGet(id: Int64, apiVersion: String? = nil) -> AnyPublisher<URL, Error> {
        let requestBuilder = orderItemsGetWithRequestBuilder(id: id, apiVersion: apiVersion)
        let requestTask = requestBuilder.requestTask
        return Future<URL, Error> { promise in
            requestBuilder.execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     - GET /api/orderitems/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - parameter apiVersion: (query)  (optional)
     - returns: RequestBuilder<URL> 
     */
    open class func orderItemsGetWithRequestBuilder(id: Int64, apiVersion: String? = nil) -> RequestBuilder<URL> {
        var localVariablePath = "/api/orderitems/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "api-version": (wrappedValue: apiVersion?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter updateOrderItemCommand: (body)  
     - parameter apiVersion: (query)  (optional)
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func orderItemsPut(id: Int64, updateOrderItemCommand: UpdateOrderItemCommand, apiVersion: String? = nil) -> AnyPublisher<URL, Error> {
        let requestBuilder = orderItemsPutWithRequestBuilder(id: id, updateOrderItemCommand: updateOrderItemCommand, apiVersion: apiVersion)
        let requestTask = requestBuilder.requestTask
        return Future<URL, Error> { promise in
            requestBuilder.execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     - PUT /api/orderitems/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - parameter updateOrderItemCommand: (body)  
     - parameter apiVersion: (query)  (optional)
     - returns: RequestBuilder<URL> 
     */
    open class func orderItemsPutWithRequestBuilder(id: Int64, updateOrderItemCommand: UpdateOrderItemCommand, apiVersion: String? = nil) -> RequestBuilder<URL> {
        var localVariablePath = "/api/orderitems/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateOrderItemCommand)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "api-version": (wrappedValue: apiVersion?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
