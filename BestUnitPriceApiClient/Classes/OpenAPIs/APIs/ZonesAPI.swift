//
// ZonesAPI.swift
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

open class ZonesAPI {

    /**

     - parameter id: (path)  
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func zonesDelete(id: Int) -> AnyPublisher<URL, Error> {
        let requestBuilder = zonesDeleteWithRequestBuilder(id: id)
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
     - DELETE /api/zones/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - returns: RequestBuilder<URL> 
     */
    open class func zonesDeleteWithRequestBuilder(id: Int) -> RequestBuilder<URL> {
        var localVariablePath = "/api/zones/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = BestUnitPriceApiClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = BestUnitPriceApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get All zones.
     
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func zonesGet() -> AnyPublisher<URL, Error> {
        let requestBuilder = zonesGetWithRequestBuilder()
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
     Get All zones.
     - GET /api/zones
     - BASIC:
       - type: http
       - name: Bearer
     - returns: RequestBuilder<URL> 
     */
    open class func zonesGetWithRequestBuilder() -> RequestBuilder<URL> {
        let localVariablePath = "/api/zones"
        let localVariableURLString = BestUnitPriceApiClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = BestUnitPriceApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Zone details.
     
     - parameter id: (path)  
     - returns: AnyPublisher<ZoneDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func zonesGet2(id: Int64) -> AnyPublisher<ZoneDto, Error> {
        let requestBuilder = zonesGet2WithRequestBuilder(id: id)
        let requestTask = requestBuilder.requestTask
        return Future<ZoneDto, Error> { promise in
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
     Get Zone details.
     - GET /api/zones/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - returns: RequestBuilder<ZoneDto> 
     */
    open class func zonesGet2WithRequestBuilder(id: Int64) -> RequestBuilder<ZoneDto> {
        var localVariablePath = "/api/zones/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = BestUnitPriceApiClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ZoneDto>.Type = BestUnitPriceApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter baseZoneViewModel: (body)  
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func zonesPost(baseZoneViewModel: BaseZoneViewModel) -> AnyPublisher<URL, Error> {
        let requestBuilder = zonesPostWithRequestBuilder(baseZoneViewModel: baseZoneViewModel)
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
     - POST /api/zones
     - BASIC:
       - type: http
       - name: Bearer
     - parameter baseZoneViewModel: (body)  
     - returns: RequestBuilder<URL> 
     */
    open class func zonesPostWithRequestBuilder(baseZoneViewModel: BaseZoneViewModel) -> RequestBuilder<URL> {
        let localVariablePath = "/api/zones"
        let localVariableURLString = BestUnitPriceApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseZoneViewModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = BestUnitPriceApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter id: (path)  
     - parameter zonePutViewModel: (body)  
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func zonesPut(id: Int, zonePutViewModel: ZonePutViewModel) -> AnyPublisher<URL, Error> {
        let requestBuilder = zonesPutWithRequestBuilder(id: id, zonePutViewModel: zonePutViewModel)
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
     - PUT /api/zones/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - parameter zonePutViewModel: (body)  
     - returns: RequestBuilder<URL> 
     */
    open class func zonesPutWithRequestBuilder(id: Int, zonePutViewModel: ZonePutViewModel) -> RequestBuilder<URL> {
        var localVariablePath = "/api/zones/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = BestUnitPriceApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: zonePutViewModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = BestUnitPriceApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search zones using available filters.
     
     - parameter searchZonesRequest: (body)  
     - returns: AnyPublisher<PaginationResponseOfZoneDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func zonesSearch(searchZonesRequest: SearchZonesRequest) -> AnyPublisher<PaginationResponseOfZoneDto, Error> {
        let requestBuilder = zonesSearchWithRequestBuilder(searchZonesRequest: searchZonesRequest)
        let requestTask = requestBuilder.requestTask
        return Future<PaginationResponseOfZoneDto, Error> { promise in
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
     Search zones using available filters.
     - POST /api/zones/search
     - BASIC:
       - type: http
       - name: Bearer
     - parameter searchZonesRequest: (body)  
     - returns: RequestBuilder<PaginationResponseOfZoneDto> 
     */
    open class func zonesSearchWithRequestBuilder(searchZonesRequest: SearchZonesRequest) -> RequestBuilder<PaginationResponseOfZoneDto> {
        let localVariablePath = "/api/zones/search"
        let localVariableURLString = BestUnitPriceApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: searchZonesRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaginationResponseOfZoneDto>.Type = BestUnitPriceApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}