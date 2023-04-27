# VendorLocationsAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vendorLocationsDelete**](VendorLocationsAPI.md#vendorlocationsdelete) | **DELETE** /api/vendor/{vendorId}/locations/{id} | 
[**vendorLocationsGet**](VendorLocationsAPI.md#vendorlocationsget) | **GET** /api/vendor/{vendorId}/locations | 
[**vendorLocationsGet2**](VendorLocationsAPI.md#vendorlocationsget2) | **GET** /api/vendor/{vendorId}/locations/{id} | 
[**vendorLocationsPost**](VendorLocationsAPI.md#vendorlocationspost) | **POST** /api/vendor/{vendorId}/locations | 
[**vendorLocationsPut**](VendorLocationsAPI.md#vendorlocationsput) | **PUT** /api/vendor/{vendorId}/locations/{id} | 


# **vendorLocationsDelete**
```swift
    open class func vendorLocationsDelete(vendorId: Int64, id: Int64, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let vendorId = 987 // Int64 | 
let id = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorLocationsAPI.vendorLocationsDelete(vendorId: vendorId, id: id, apiVersion: apiVersion) { (response, error) in
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
 **vendorId** | **Int64** |  | 
 **id** | **Int64** |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorLocationsGet**
```swift
    open class func vendorLocationsGet(vendorId: Int64, apiVersion: String? = nil, completion: @escaping (_ data: VendorViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let vendorId = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorLocationsAPI.vendorLocationsGet(vendorId: vendorId, apiVersion: apiVersion) { (response, error) in
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
 **vendorId** | **Int64** |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

[**VendorViewModel**](VendorViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorLocationsGet2**
```swift
    open class func vendorLocationsGet2(vendorId: Int64, id: Int64, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let vendorId = 987 // Int64 | 
let id = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorLocationsAPI.vendorLocationsGet2(vendorId: vendorId, id: id, apiVersion: apiVersion) { (response, error) in
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
 **vendorId** | **Int64** |  | 
 **id** | **Int64** |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorLocationsPost**
```swift
    open class func vendorLocationsPost(vendorId: Int64, baseVendorLocationViewModel: BaseVendorLocationViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let vendorId = 987 // Int64 | 
let baseVendorLocationViewModel = BaseVendorLocationViewModel(name: "name_example", contactName: "contactName_example", website: "website_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", latitude: 123, longitude: 123, deliveryRange: 123, active: false, isGeoCoded: false) // BaseVendorLocationViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorLocationsAPI.vendorLocationsPost(vendorId: vendorId, baseVendorLocationViewModel: baseVendorLocationViewModel, apiVersion: apiVersion) { (response, error) in
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
 **vendorId** | **Int64** |  | 
 **baseVendorLocationViewModel** | [**BaseVendorLocationViewModel**](BaseVendorLocationViewModel.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorLocationsPut**
```swift
    open class func vendorLocationsPut(vendorId: Int64, id: Int64, vendorLocationViewModel: VendorLocationViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let vendorId = 987 // Int64 | 
let id = 987 // Int64 | 
let vendorLocationViewModel = VendorLocationViewModel(name: "name_example", contactName: "contactName_example", website: "website_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", latitude: 123, longitude: 123, deliveryRange: 123, active: false, isGeoCoded: false, id: 123) // VendorLocationViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorLocationsAPI.vendorLocationsPut(vendorId: vendorId, id: id, vendorLocationViewModel: vendorLocationViewModel, apiVersion: apiVersion) { (response, error) in
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
 **vendorId** | **Int64** |  | 
 **id** | **Int64** |  | 
 **vendorLocationViewModel** | [**VendorLocationViewModel**](VendorLocationViewModel.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

