//
// StatesAPI.swift
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

open class StatesAPI {

    /**

     - parameter apiVersion: (query)  (optional)
     - returns: AnyPublisher<StateViewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func statesGet(apiVersion: String? = nil) -> AnyPublisher<StateViewModel, Error> {
        let requestBuilder = statesGetWithRequestBuilder(apiVersion: apiVersion)
        let requestTask = requestBuilder.requestTask
        return Future<StateViewModel, Error> { promise in
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
     - GET /api/states
     - BASIC:
       - type: http
       - name: Bearer
     - parameter apiVersion: (query)  (optional)
     - returns: RequestBuilder<StateViewModel> 
     */
    open class func statesGetWithRequestBuilder(apiVersion: String? = nil) -> RequestBuilder<StateViewModel> {
        let localVariablePath = "/api/states"
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

        let localVariableRequestBuilder: RequestBuilder<StateViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
