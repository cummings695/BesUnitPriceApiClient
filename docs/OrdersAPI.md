# OrdersAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersDelete**](OrdersAPI.md#ordersdelete) | **DELETE** /api/orders | 
[**ordersGet**](OrdersAPI.md#ordersget) | **GET** /api/orders | 
[**ordersGet2**](OrdersAPI.md#ordersget2) | **GET** /api/orders/{id} | 
[**ordersGetPdf**](OrdersAPI.md#ordersgetpdf) | **GET** /api/orders/{id}/pdf | 
[**ordersPut**](OrdersAPI.md#ordersput) | **PUT** /api/orders/{id} | 
[**ordersUpdateStatus**](OrdersAPI.md#ordersupdatestatus) | **POST** /api/orders/{id}/status/{status} | 


# **ordersDelete**
```swift
    open class func ordersDelete(id: Int64? = nil, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 |  (optional)
let apiVersion = "apiVersion_example" // String |  (optional)

OrdersAPI.ordersDelete(id: id, apiVersion: apiVersion) { (response, error) in
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
 **id** | **Int64** |  | [optional] 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersGet**
```swift
    open class func ordersGet(restaurantId: Int64? = nil, statuses: [String]? = nil, startDate: Date? = nil, endDate: Date? = nil, hydrationLevel: Int? = nil, page: Int? = nil, pageSize: Int? = nil, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let restaurantId = 987 // Int64 |  (optional)
let statuses = ["inner_example"] // [String] |  (optional)
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)
let hydrationLevel = 987 // Int |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let apiVersion = "apiVersion_example" // String |  (optional)

OrdersAPI.ordersGet(restaurantId: restaurantId, statuses: statuses, startDate: startDate, endDate: endDate, hydrationLevel: hydrationLevel, page: page, pageSize: pageSize, apiVersion: apiVersion) { (response, error) in
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
 **restaurantId** | **Int64** |  | [optional] 
 **statuses** | [**[String]**](String.md) |  | [optional] 
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 
 **hydrationLevel** | **Int** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersGet2**
```swift
    open class func ordersGet2(id: Int64, apiVersion: String? = nil, completion: @escaping (_ data: OrderViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

OrdersAPI.ordersGet2(id: id, apiVersion: apiVersion) { (response, error) in
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

[**OrderViewModel**](OrderViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersGetPdf**
```swift
    open class func ordersGetPdf(id: Int64, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

OrdersAPI.ordersGetPdf(id: id, apiVersion: apiVersion) { (response, error) in
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

# **ordersPut**
```swift
    open class func ordersPut(id: Int64, orderPutViewModel: OrderPutViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let orderPutViewModel = OrderPutViewModel(id: 123, createdDate: Date(), totalPrice: 123, active: false, status: OrderStatus(), invoice: "invoice_example", deliveryDate: Date(), orderDate: Date(), number: "number_example") // OrderPutViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

OrdersAPI.ordersPut(id: id, orderPutViewModel: orderPutViewModel, apiVersion: apiVersion) { (response, error) in
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
 **orderPutViewModel** | [**OrderPutViewModel**](OrderPutViewModel.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersUpdateStatus**
```swift
    open class func ordersUpdateStatus(id: Int64, status: OrderStatus, apiVersion: String? = nil, completion: @escaping (_ data: OrderDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let status = OrderStatus() // OrderStatus | 
let apiVersion = "apiVersion_example" // String |  (optional)

OrdersAPI.ordersUpdateStatus(id: id, status: status, apiVersion: apiVersion) { (response, error) in
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
 **status** | [**OrderStatus**](.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

[**OrderDto**](OrderDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

