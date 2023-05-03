# OrderItemsAPI

All URIs are relative to *https://zwr8hzk4-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderItemsGet**](OrderItemsAPI.md#orderitemsget) | **GET** /api/orderitems/{id} | 
[**orderItemsPut**](OrderItemsAPI.md#orderitemsput) | **PUT** /api/orderitems/{id} | 


# **orderItemsGet**
```swift
    open class func orderItemsGet(id: Int64, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let apiVersion = "apiVersion_example" // String |  (optional)

OrderItemsAPI.orderItemsGet(id: id, apiVersion: apiVersion) { (response, error) in
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

# **orderItemsPut**
```swift
    open class func orderItemsPut(id: Int64, updateOrderItemCommand: UpdateOrderItemCommand, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let updateOrderItemCommand = UpdateOrderItemCommand(orderId: 123, orderItemId: 123, receivedQuantity: 123, orderCode: "orderCode_example", receivedPrice: 123, receivedUnitPrice: 123, received: false) // UpdateOrderItemCommand | 
let apiVersion = "apiVersion_example" // String |  (optional)

OrderItemsAPI.orderItemsPut(id: id, updateOrderItemCommand: updateOrderItemCommand, apiVersion: apiVersion) { (response, error) in
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
 **updateOrderItemCommand** | [**UpdateOrderItemCommand**](UpdateOrderItemCommand.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

