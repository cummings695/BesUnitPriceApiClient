//
// RestaurantUsersAPI.swift
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

open class RestaurantUsersAPI {

    /**

     - parameter createInvitationPostViewModel: (body)  
     - parameter apiVersion: (query)  (optional)
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersCreateInvitation(createInvitationPostViewModel: CreateInvitationPostViewModel, apiVersion: String? = nil) -> AnyPublisher<URL, Error> {
        let requestBuilder = restaurantUsersCreateInvitationWithRequestBuilder(createInvitationPostViewModel: createInvitationPostViewModel, apiVersion: apiVersion)
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
     - POST /api/restaurantusers/invite
     - BASIC:
       - type: http
       - name: Bearer
     - parameter createInvitationPostViewModel: (body)  
     - parameter apiVersion: (query)  (optional)
     - returns: RequestBuilder<URL> 
     */
    open class func restaurantUsersCreateInvitationWithRequestBuilder(createInvitationPostViewModel: CreateInvitationPostViewModel, apiVersion: String? = nil) -> RequestBuilder<URL> {
        let localVariablePath = "/api/restaurantusers/invite"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createInvitationPostViewModel)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "api-version": (wrappedValue: apiVersion?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter restaurantId: (query)  (optional)
     - parameter apiVersion: (query)  (optional)
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersDelete(id: String, restaurantId: Int64? = nil, apiVersion: String? = nil) -> AnyPublisher<URL, Error> {
        let requestBuilder = restaurantUsersDeleteWithRequestBuilder(id: id, restaurantId: restaurantId, apiVersion: apiVersion)
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
     - DELETE /api/restaurantusers/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - parameter restaurantId: (query)  (optional)
     - parameter apiVersion: (query)  (optional)
     - returns: RequestBuilder<URL> 
     */
    open class func restaurantUsersDeleteWithRequestBuilder(id: String, restaurantId: Int64? = nil, apiVersion: String? = nil) -> RequestBuilder<URL> {
        var localVariablePath = "/api/restaurantusers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "restaurantId": (wrappedValue: restaurantId?.encodeToJSON(), isExplode: true),
            "api-version": (wrappedValue: apiVersion?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter restaurantId: (query)  (optional)
     - parameter apiVersion: (query)  (optional)
     - returns: AnyPublisher<UserViewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersGet(restaurantId: Int64? = nil, apiVersion: String? = nil) -> AnyPublisher<UserViewModel, Error> {
        let requestBuilder = restaurantUsersGetWithRequestBuilder(restaurantId: restaurantId, apiVersion: apiVersion)
        let requestTask = requestBuilder.requestTask
        return Future<UserViewModel, Error> { promise in
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
     - GET /api/restaurantusers
     - BASIC:
       - type: http
       - name: Bearer
     - parameter restaurantId: (query)  (optional)
     - parameter apiVersion: (query)  (optional)
     - returns: RequestBuilder<UserViewModel> 
     */
    open class func restaurantUsersGetWithRequestBuilder(restaurantId: Int64? = nil, apiVersion: String? = nil) -> RequestBuilder<UserViewModel> {
        let localVariablePath = "/api/restaurantusers"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "restaurantId": (wrappedValue: restaurantId?.encodeToJSON(), isExplode: true),
            "api-version": (wrappedValue: apiVersion?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter restaurantId: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter apiVersion: (query)  (optional)
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersPost(restaurantId: Int64? = nil, userId: String? = nil, apiVersion: String? = nil) -> AnyPublisher<URL, Error> {
        let requestBuilder = restaurantUsersPostWithRequestBuilder(restaurantId: restaurantId, userId: userId, apiVersion: apiVersion)
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
     - POST /api/restaurantusers
     - BASIC:
       - type: http
       - name: Bearer
     - parameter restaurantId: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter apiVersion: (query)  (optional)
     - returns: RequestBuilder<URL> 
     */
    open class func restaurantUsersPostWithRequestBuilder(restaurantId: Int64? = nil, userId: String? = nil, apiVersion: String? = nil) -> RequestBuilder<URL> {
        let localVariablePath = "/api/restaurantusers"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "restaurantId": (wrappedValue: restaurantId?.encodeToJSON(), isExplode: true),
            "userId": (wrappedValue: userId?.encodeToJSON(), isExplode: true),
            "api-version": (wrappedValue: apiVersion?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}