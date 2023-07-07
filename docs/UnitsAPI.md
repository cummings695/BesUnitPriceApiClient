# UnitsAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**unitsCreate**](UnitsAPI.md#unitscreate) | **POST** /api/units | Create a new Unit of Measure.
[**unitsDelete**](UnitsAPI.md#unitsdelete) | **DELETE** /api/units/{id} | Delete a Unit of Measure.
[**unitsFind**](UnitsAPI.md#unitsfind) | **GET** /api/units | Search Units of Measure using available filters.
[**unitsGet**](UnitsAPI.md#unitsget) | **GET** /api/units/{id} | Get a Unit of Measure.
[**unitsSearch**](UnitsAPI.md#unitssearch) | **POST** /api/units/search | Search Units of Measure using available filters.
[**unitsUpdate**](UnitsAPI.md#unitsupdate) | **PUT** /api/units/{id} | Update a Unit of Measure.


# **unitsCreate**
```swift
    open class func unitsCreate(createUnitCommand: CreateUnitCommand, completion: @escaping (_ data: Int64?, _ error: Error?) -> Void)
```

Create a new Unit of Measure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createUnitCommand = CreateUnitCommand(name: "name_example", abbreviation: "abbreviation_example") // CreateUnitCommand | 

// Create a new Unit of Measure.
UnitsAPI.unitsCreate(createUnitCommand: createUnitCommand) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUnitCommand** | [**CreateUnitCommand**](CreateUnitCommand.md) |  | 

### Return type

**Int64**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unitsDelete**
```swift
    open class func unitsDelete(id: Int64, completion: @escaping (_ data: Int64?, _ error: Error?) -> Void)
```

Delete a Unit of Measure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

// Delete a Unit of Measure.
UnitsAPI.unitsDelete(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int64** |  | 

### Return type

**Int64**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unitsFind**
```swift
    open class func unitsFind(name: String? = nil, sort: String? = nil, page: Int? = nil, pageSize: Int? = nil, orderBy: [String]? = nil, advancedSearchFields: [String]? = nil, advancedSearchKeyword: String? = nil, keyword: String? = nil, advancedFilterLogic: String? = nil, advancedFilterFilters: [Filter]? = nil, advancedFilterField: String? = nil, advancedFilterOperator: String? = nil, advancedFilterValue: AnyCodable? = nil, completion: @escaping (_ data: PaginationResponseOfUnitDto?, _ error: Error?) -> Void)
```

Search Units of Measure using available filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String |  (optional)
let sort = "sort_example" // String |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let orderBy = ["inner_example"] // [String] |  (optional)
let advancedSearchFields = ["inner_example"] // [String] |  (optional)
let advancedSearchKeyword = "advancedSearchKeyword_example" // String |  (optional)
let keyword = "keyword_example" // String |  (optional)
let advancedFilterLogic = "advancedFilterLogic_example" // String |  (optional)
let advancedFilterFilters = [Filter(logic: "logic_example", filters: [nil], field: "field_example", _operator: "_operator_example", value: 123)] // [Filter] |  (optional)
let advancedFilterField = "advancedFilterField_example" // String |  (optional)
let advancedFilterOperator = "advancedFilterOperator_example" // String |  (optional)
let advancedFilterValue =  // AnyCodable |  (optional)

// Search Units of Measure using available filters.
UnitsAPI.unitsFind(name: name, sort: sort, page: page, pageSize: pageSize, orderBy: orderBy, advancedSearchFields: advancedSearchFields, advancedSearchKeyword: advancedSearchKeyword, keyword: keyword, advancedFilterLogic: advancedFilterLogic, advancedFilterFilters: advancedFilterFilters, advancedFilterField: advancedFilterField, advancedFilterOperator: advancedFilterOperator, advancedFilterValue: advancedFilterValue) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** |  | [optional] 
 **sort** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **orderBy** | [**[String]**](String.md) |  | [optional] 
 **advancedSearchFields** | [**[String]**](String.md) |  | [optional] 
 **advancedSearchKeyword** | **String** |  | [optional] 
 **keyword** | **String** |  | [optional] 
 **advancedFilterLogic** | **String** |  | [optional] 
 **advancedFilterFilters** | [**[Filter]**](Filter.md) |  | [optional] 
 **advancedFilterField** | **String** |  | [optional] 
 **advancedFilterOperator** | **String** |  | [optional] 
 **advancedFilterValue** | [**AnyCodable**](.md) |  | [optional] 

### Return type

[**PaginationResponseOfUnitDto**](PaginationResponseOfUnitDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unitsGet**
```swift
    open class func unitsGet(id: Int64, completion: @escaping (_ data: UnitDto?, _ error: Error?) -> Void)
```

Get a Unit of Measure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

// Get a Unit of Measure.
UnitsAPI.unitsGet(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int64** |  | 

### Return type

[**UnitDto**](UnitDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unitsSearch**
```swift
    open class func unitsSearch(getPagedUnitsQuery: GetPagedUnitsQuery, completion: @escaping (_ data: PaginationResponseOfUnitDto?, _ error: Error?) -> Void)
```

Search Units of Measure using available filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let getPagedUnitsQuery = GetPagedUnitsQuery(advancedSearch: BaseFilter_advancedSearch(fields: ["fields_example"], keyword: "keyword_example"), keyword: "keyword_example", advancedFilter: BaseFilter_advancedFilter(logic: "logic_example", filters: [Filter(logic: "logic_example", filters: [nil], field: "field_example", _operator: "_operator_example", value: 123)], field: "field_example", _operator: "_operator_example", value: 123), page: 123, pageSize: 123, orderBy: ["orderBy_example"], name: "name_example", sort: "sort_example") // GetPagedUnitsQuery | 

// Search Units of Measure using available filters.
UnitsAPI.unitsSearch(getPagedUnitsQuery: getPagedUnitsQuery) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getPagedUnitsQuery** | [**GetPagedUnitsQuery**](GetPagedUnitsQuery.md) |  | 

### Return type

[**PaginationResponseOfUnitDto**](PaginationResponseOfUnitDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unitsUpdate**
```swift
    open class func unitsUpdate(id: Int64, updateUnitCommand: UpdateUnitCommand, completion: @escaping (_ data: Int64?, _ error: Error?) -> Void)
```

Update a Unit of Measure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let updateUnitCommand = UpdateUnitCommand(id: 123, name: "name_example", abbreviation: "abbreviation_example") // UpdateUnitCommand | 

// Update a Unit of Measure.
UnitsAPI.unitsUpdate(id: id, updateUnitCommand: updateUnitCommand) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int64** |  | 
 **updateUnitCommand** | [**UpdateUnitCommand**](UpdateUnitCommand.md) |  | 

### Return type

**Int64**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

