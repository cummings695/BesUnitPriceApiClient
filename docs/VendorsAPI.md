# VendorsAPI

All URIs are relative to *https://bestunitprice-dev.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vendorsDelete**](VendorsAPI.md#vendorsdelete) | **DELETE** /api/vendors/{id} | 
[**vendorsGet**](VendorsAPI.md#vendorsget) | **GET** /api/vendors | 
[**vendorsGet2**](VendorsAPI.md#vendorsget2) | **GET** /api/vendors/{id} | 
[**vendorsGetItems**](VendorsAPI.md#vendorsgetitems) | **GET** /api/vendors/{id}/items | 
[**vendorsGetPdf**](VendorsAPI.md#vendorsgetpdf) | **GET** /api/vendors/{id}/pdf | 
[**vendorsPost**](VendorsAPI.md#vendorspost) | **POST** /api/vendors | 
[**vendorsPut**](VendorsAPI.md#vendorsput) | **PUT** /api/vendors/{id} | 


# **vendorsDelete**
```swift
    open class func vendorsDelete(id: Int, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorsAPI.vendorsDelete(id: id, apiVersion: apiVersion) { (response, error) in
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
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorsGet**
```swift
    open class func vendorsGet(name: String? = nil, active: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, sort: String? = nil, apiVersion: String? = nil, completion: @escaping (_ data: VendorViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let name = "name_example" // String |  (optional)
let active = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let sort = "sort_example" // String |  (optional) (default to "name asc")
let apiVersion = "apiVersion_example" // String |  (optional)

VendorsAPI.vendorsGet(name: name, active: active, page: page, pageSize: pageSize, sort: sort, apiVersion: apiVersion) { (response, error) in
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
 **active** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **sort** | **String** |  | [optional] [default to &quot;name asc&quot;]
 **apiVersion** | **String** |  | [optional] 

### Return type

[**VendorViewModel**](VendorViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorsGet2**
```swift
    open class func vendorsGet2(id: Int64, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorsAPI.vendorsGet2(id: id, apiVersion: apiVersion) { (response, error) in
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
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorsGetItems**
```swift
    open class func vendorsGetItems(id: Int64, name: String? = nil, sort: String? = nil, sortDir: String? = nil, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int64 | 
let name = "name_example" // String |  (optional)
let sort = "sort_example" // String |  (optional)
let sortDir = "sortDir_example" // String |  (optional)
let apiVersion = "apiVersion_example" // String |  (optional)

VendorsAPI.vendorsGetItems(id: id, name: name, sort: sort, sortDir: sortDir, apiVersion: apiVersion) { (response, error) in
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
 **name** | **String** |  | [optional] 
 **sort** | **String** |  | [optional] 
 **sortDir** | **String** |  | [optional] 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorsGetPdf**
```swift
    open class func vendorsGetPdf(id: Int64, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorsAPI.vendorsGetPdf(id: id, apiVersion: apiVersion) { (response, error) in
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
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorsPost**
```swift
    open class func vendorsPost(postVendorViewModel: PostVendorViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let postVendorViewModel = PostVendorViewModel(name: "name_example", contactName: "contactName_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", email: "email_example", phone1: "phone1_example", phone2: "phone2_example", fax: "fax_example", cellPhone: "cellPhone_example", notes: "notes_example", minimumOrder: 123, accountNumber: "accountNumber_example", orderTotal: 123, incentivePercentage: 123, sortOrder: 123, active: false, website: "website_example", contactEmail: "contactEmail_example", geoCached: false, deliveryRange: 123) // PostVendorViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorsAPI.vendorsPost(postVendorViewModel: postVendorViewModel, apiVersion: apiVersion) { (response, error) in
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
 **postVendorViewModel** | [**PostVendorViewModel**](PostVendorViewModel.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vendorsPut**
```swift
    open class func vendorsPut(id: Int, vendorPutViewModel: VendorPutViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let id = 987 // Int | 
let vendorPutViewModel = VendorPutViewModel(id: 123, name: "name_example", contactName: "contactName_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", email: "email_example", phone1: "phone1_example", phone2: "phone2_example", fax: "fax_example", cellPhone: "cellPhone_example", notes: "notes_example", minimumOrder: 123, accountNumber: "accountNumber_example", orderTotal: 123, incentivePercentage: 123, sortOrder: 123, active: false, website: "website_example", contactEmail: "contactEmail_example", geoCached: false, deliveryRange: 123, locations: [VendorLocationViewModel(name: "name_example", contactName: "contactName_example", website: "website_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", latitude: 123, longitude: 123, deliveryRange: 123, active: false, isGeoCoded: false, id: 123)]) // VendorPutViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

VendorsAPI.vendorsPut(id: id, vendorPutViewModel: vendorPutViewModel, apiVersion: apiVersion) { (response, error) in
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
 **vendorPutViewModel** | [**VendorPutViewModel**](VendorPutViewModel.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

