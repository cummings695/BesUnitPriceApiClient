# ZonesAPI

All URIs are relative to *https://bestunitprice-dev.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**zonesDelete**](ZonesAPI.md#zonesdelete) | **DELETE** /api/zones/{id} | 
[**zonesGet**](ZonesAPI.md#zonesget) | **GET** /api/zones | Get All zones.
[**zonesGet2**](ZonesAPI.md#zonesget2) | **GET** /api/zones/{id} | Get Zone details.
[**zonesPost**](ZonesAPI.md#zonespost) | **POST** /api/zones | 
[**zonesPut**](ZonesAPI.md#zonesput) | **PUT** /api/zones/{id} | 
[**zonesSearch**](ZonesAPI.md#zonessearch) | **POST** /api/zones/search | Search zones using available filters.


# **zonesDelete**
```swift
    open class func zonesDelete(id: Int, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int | 

ZonesAPI.zonesDelete(id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zonesGet**
```swift
    open class func zonesGet(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get All zones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient


// Get All zones.
ZonesAPI.zonesGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zonesGet2**
```swift
    open class func zonesGet2(id: Int64, completion: @escaping (_ data: ZoneDto?, _ error: Error?) -> Void)
```

Get Zone details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int64 | 

// Get Zone details.
ZonesAPI.zonesGet2(id: id) { (response, error) in
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

[**ZoneDto**](ZoneDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zonesPost**
```swift
    open class func zonesPost(baseZoneViewModel: BaseZoneViewModel, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let baseZoneViewModel = BaseZoneViewModel(name: "name_example", sortOrder: 123, shelvingUnits: [ShelvingUnitViewModel(unitNumber: 123, shelfAmount: 123, id: 123)]) // BaseZoneViewModel | 

ZonesAPI.zonesPost(baseZoneViewModel: baseZoneViewModel) { (response, error) in
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
 **baseZoneViewModel** | [**BaseZoneViewModel**](BaseZoneViewModel.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zonesPut**
```swift
    open class func zonesPut(id: Int, zonePutViewModel: ZonePutViewModel, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int | 
let zonePutViewModel = ZonePutViewModel(name: "name_example", sortOrder: 123, shelvingUnits: [ShelvingUnitViewModel(unitNumber: 123, shelfAmount: 123, id: 123)], id: 123) // ZonePutViewModel | 

ZonesAPI.zonesPut(id: id, zonePutViewModel: zonePutViewModel) { (response, error) in
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
 **id** | **Int** |  | 
 **zonePutViewModel** | [**ZonePutViewModel**](ZonePutViewModel.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zonesSearch**
```swift
    open class func zonesSearch(searchZonesRequest: SearchZonesRequest, completion: @escaping (_ data: PaginationResponseOfZoneDto?, _ error: Error?) -> Void)
```

Search zones using available filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let searchZonesRequest = SearchZonesRequest(advancedSearch: BaseFilter_advancedSearch(fields: ["fields_example"], keyword: "keyword_example"), keyword: "keyword_example", advancedFilter: BaseFilter_advancedFilter(logic: "logic_example", filters: [Filter(logic: "logic_example", filters: [nil], field: "field_example", _operator: "_operator_example", value: 123)], field: "field_example", _operator: "_operator_example", value: 123), page: 123, pageSize: 123, orderBy: ["orderBy_example"]) // SearchZonesRequest | 

// Search zones using available filters.
ZonesAPI.zonesSearch(searchZonesRequest: searchZonesRequest) { (response, error) in
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
 **searchZonesRequest** | [**SearchZonesRequest**](SearchZonesRequest.md) |  | 

### Return type

[**PaginationResponseOfZoneDto**](PaginationResponseOfZoneDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

