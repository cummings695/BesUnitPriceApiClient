//
// UnitsAPI.swift
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

open class UnitsAPI {

    /**
     Create a new Unit of Measure.
     
     - parameter createUnitCommand: (body)  
     - returns: AnyPublisher<Int64, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unitsCreate(createUnitCommand: CreateUnitCommand) -> AnyPublisher<Int64, Error> {
        let requestBuilder = unitsCreateWithRequestBuilder(createUnitCommand: createUnitCommand)
        let requestTask = requestBuilder.requestTask
        return Future<Int64, Error> { promise in
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
     Create a new Unit of Measure.
     - POST /api/units
     - BASIC:
       - type: http
       - name: Bearer
     - parameter createUnitCommand: (body)  
     - returns: RequestBuilder<Int64> 
     */
    open class func unitsCreateWithRequestBuilder(createUnitCommand: CreateUnitCommand) -> RequestBuilder<Int64> {
        let localVariablePath = "/api/units"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createUnitCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Int64>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete a Unit of Measure.
     
     - parameter id: (path)  
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unitsDelete(id: Int64) -> AnyPublisher<URL, Error> {
        let requestBuilder = unitsDeleteWithRequestBuilder(id: id)
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
     Delete a Unit of Measure.
     - DELETE /api/units/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - returns: RequestBuilder<URL> 
     */
    open class func unitsDeleteWithRequestBuilder(id: Int64) -> RequestBuilder<URL> {
        var localVariablePath = "/api/units/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search Units of Measure using available filters.
     
     - parameter name: (query)  (optional)
     - parameter sort: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - parameter orderBy: (query)  (optional)
     - parameter advancedSearchFields: (query)  (optional)
     - parameter advancedSearchKeyword: (query)  (optional)
     - parameter keyword: (query)  (optional)
     - parameter advancedFilterLogic: (query)  (optional)
     - parameter advancedFilterFilters: (query)  (optional)
     - parameter advancedFilterField: (query)  (optional)
     - parameter advancedFilterOperator: (query)  (optional)
     - parameter advancedFilterValue: (query)  (optional)
     - returns: AnyPublisher<PaginationResponseOfUnitDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unitsGet(name: String? = nil, sort: String? = nil, page: Int? = nil, pageSize: Int? = nil, orderBy: [String]? = nil, advancedSearchFields: [String]? = nil, advancedSearchKeyword: String? = nil, keyword: String? = nil, advancedFilterLogic: String? = nil, advancedFilterFilters: [Filter]? = nil, advancedFilterField: String? = nil, advancedFilterOperator: String? = nil, advancedFilterValue: AnyCodable? = nil) -> AnyPublisher<PaginationResponseOfUnitDto, Error> {
        let requestBuilder = unitsGetWithRequestBuilder(name: name, sort: sort, page: page, pageSize: pageSize, orderBy: orderBy, advancedSearchFields: advancedSearchFields, advancedSearchKeyword: advancedSearchKeyword, keyword: keyword, advancedFilterLogic: advancedFilterLogic, advancedFilterFilters: advancedFilterFilters, advancedFilterField: advancedFilterField, advancedFilterOperator: advancedFilterOperator, advancedFilterValue: advancedFilterValue)
        let requestTask = requestBuilder.requestTask
        return Future<PaginationResponseOfUnitDto, Error> { promise in
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
     Search Units of Measure using available filters.
     - GET /api/units
     - BASIC:
       - type: http
       - name: Bearer
     - parameter name: (query)  (optional)
     - parameter sort: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - parameter orderBy: (query)  (optional)
     - parameter advancedSearchFields: (query)  (optional)
     - parameter advancedSearchKeyword: (query)  (optional)
     - parameter keyword: (query)  (optional)
     - parameter advancedFilterLogic: (query)  (optional)
     - parameter advancedFilterFilters: (query)  (optional)
     - parameter advancedFilterField: (query)  (optional)
     - parameter advancedFilterOperator: (query)  (optional)
     - parameter advancedFilterValue: (query)  (optional)
     - returns: RequestBuilder<PaginationResponseOfUnitDto> 
     */
    open class func unitsGetWithRequestBuilder(name: String? = nil, sort: String? = nil, page: Int? = nil, pageSize: Int? = nil, orderBy: [String]? = nil, advancedSearchFields: [String]? = nil, advancedSearchKeyword: String? = nil, keyword: String? = nil, advancedFilterLogic: String? = nil, advancedFilterFilters: [Filter]? = nil, advancedFilterField: String? = nil, advancedFilterOperator: String? = nil, advancedFilterValue: AnyCodable? = nil) -> RequestBuilder<PaginationResponseOfUnitDto> {
        let localVariablePath = "/api/units"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            "Sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "Page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "PageSize": (wrappedValue: pageSize?.encodeToJSON(), isExplode: true),
            "OrderBy": (wrappedValue: orderBy?.encodeToJSON(), isExplode: true),
//            "AdvancedSearch.Fields": (wrappedValue: advancedSearchFields?.encodeToJSON(), isExplode: true),
//            "AdvancedSearch.Keyword": (wrappedValue: advancedSearchKeyword?.encodeToJSON(), isExplode: true),
//            "Keyword": (wrappedValue: keyword?.encodeToJSON(), isExplode: true),
//            "AdvancedFilter.Logic": (wrappedValue: advancedFilterLogic?.encodeToJSON(), isExplode: true),
//            "AdvancedFilter.Filters": (wrappedValue: advancedFilterFilters?.encodeToJSON(), isExplode: true),
//            "AdvancedFilter.Field": (wrappedValue: advancedFilterField?.encodeToJSON(), isExplode: true),
//            "AdvancedFilter.Operator": (wrappedValue: advancedFilterOperator?.encodeToJSON(), isExplode: true),
//            "AdvancedFilter.Value": (wrappedValue: advancedFilterValue?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaginationResponseOfUnitDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a Unit of Measure.
     
     - parameter id: (path)  
     - returns: AnyPublisher<UnitDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unitsGet2(id: Int) -> AnyPublisher<UnitDto, Error> {
        let requestBuilder = unitsGet2WithRequestBuilder(id: id)
        let requestTask = requestBuilder.requestTask
        return Future<UnitDto, Error> { promise in
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
     Get a Unit of Measure.
     - GET /api/units/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - returns: RequestBuilder<UnitDto> 
     */
    open class func unitsGet2WithRequestBuilder(id: Int) -> RequestBuilder<UnitDto> {
        var localVariablePath = "/api/units/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UnitDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update a Unit of Measure.
     
     - parameter id: (path)  
     - parameter updateUnitCommand: (body)  
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unitsPut(id: Int, updateUnitCommand: UpdateUnitCommand) -> AnyPublisher<URL, Error> {
        let requestBuilder = unitsPutWithRequestBuilder(id: id, updateUnitCommand: updateUnitCommand)
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
     Update a Unit of Measure.
     - PUT /api/units/{id}
     - BASIC:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - parameter updateUnitCommand: (body)  
     - returns: RequestBuilder<URL> 
     */
    open class func unitsPutWithRequestBuilder(id: Int, updateUnitCommand: UpdateUnitCommand) -> RequestBuilder<URL> {
        var localVariablePath = "/api/units/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateUnitCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search Units of Measure using available filters.
     
     - parameter getPagedUnitsQuery: (body)  
     - returns: AnyPublisher<PaginationResponseOfUnitDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unitsSearch(getPagedUnitsQuery: GetPagedUnitsQuery) -> AnyPublisher<PaginationResponseOfUnitDto, Error> {
        let requestBuilder = unitsSearchWithRequestBuilder(getPagedUnitsQuery: getPagedUnitsQuery)
        let requestTask = requestBuilder.requestTask
        return Future<PaginationResponseOfUnitDto, Error> { promise in
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
     Search Units of Measure using available filters.
     - POST /api/units/search
     - BASIC:
       - type: http
       - name: Bearer
     - parameter getPagedUnitsQuery: (body)  
     - returns: RequestBuilder<PaginationResponseOfUnitDto> 
     */
    open class func unitsSearchWithRequestBuilder(getPagedUnitsQuery: GetPagedUnitsQuery) -> RequestBuilder<PaginationResponseOfUnitDto> {
        let localVariablePath = "/api/units/search"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getPagedUnitsQuery)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaginationResponseOfUnitDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}