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

     - parameter createInvitationCommand: (body)  
     - returns: AnyPublisher<InvitationDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersCreateInvitation(createInvitationCommand: CreateInvitationCommand) -> AnyPublisher<InvitationDto, Error> {
        let requestBuilder = restaurantUsersCreateInvitationWithRequestBuilder(createInvitationCommand: createInvitationCommand)
        let requestTask = requestBuilder.requestTask
        return Future<InvitationDto, Error> { promise in
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
     - parameter createInvitationCommand: (body)  
     - returns: RequestBuilder<InvitationDto> 
     */
    open class func restaurantUsersCreateInvitationWithRequestBuilder(createInvitationCommand: CreateInvitationCommand) -> RequestBuilder<InvitationDto> {
        let localVariablePath = "/api/restaurantusers/invite"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createInvitationCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvitationDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter restaurantId: (query)  (optional)
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersDelete(id: String, restaurantId: Int64? = nil) -> AnyPublisher<URL, Error> {
        let requestBuilder = restaurantUsersDeleteWithRequestBuilder(id: id, restaurantId: restaurantId)
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
     - returns: RequestBuilder<URL> 
     */
    open class func restaurantUsersDeleteWithRequestBuilder(id: String, restaurantId: Int64? = nil) -> RequestBuilder<URL> {
        var localVariablePath = "/api/restaurantusers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "restaurantId": (wrappedValue: restaurantId?.encodeToJSON(), isExplode: true),
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
     - returns: AnyPublisher<[RestaurantUserDto], Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersGet(restaurantId: Int64? = nil) -> AnyPublisher<[RestaurantUserDto], Error> {
        let requestBuilder = restaurantUsersGetWithRequestBuilder(restaurantId: restaurantId)
        let requestTask = requestBuilder.requestTask
        return Future<[RestaurantUserDto], Error> { promise in
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
     - returns: RequestBuilder<[RestaurantUserDto]> 
     */
    open class func restaurantUsersGetWithRequestBuilder(restaurantId: Int64? = nil) -> RequestBuilder<[RestaurantUserDto]> {
        let localVariablePath = "/api/restaurantusers"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "restaurantId": (wrappedValue: restaurantId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[RestaurantUserDto]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter restaurantId: (query)  (optional)
     - parameter userId: (query)  (optional)
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func restaurantUsersPost(restaurantId: Int64? = nil, userId: String? = nil) -> AnyPublisher<URL, Error> {
        let requestBuilder = restaurantUsersPostWithRequestBuilder(restaurantId: restaurantId, userId: userId)
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
     - returns: RequestBuilder<URL> 
     */
    open class func restaurantUsersPostWithRequestBuilder(restaurantId: Int64? = nil, userId: String? = nil) -> RequestBuilder<URL> {
        let localVariablePath = "/api/restaurantusers"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "restaurantId": (wrappedValue: restaurantId?.encodeToJSON(), isExplode: true),
            "userId": (wrappedValue: userId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
