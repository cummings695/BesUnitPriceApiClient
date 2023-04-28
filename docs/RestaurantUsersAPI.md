# RestaurantUsersAPI

All URIs are relative to *https://bestunitprice-dev.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**restaurantUsersCreateInvitation**](RestaurantUsersAPI.md#restaurantuserscreateinvitation) | **POST** /api/restaurantusers/invite | 
[**restaurantUsersDelete**](RestaurantUsersAPI.md#restaurantusersdelete) | **DELETE** /api/restaurantusers/{id} | 
[**restaurantUsersGet**](RestaurantUsersAPI.md#restaurantusersget) | **GET** /api/restaurantusers | 
[**restaurantUsersPost**](RestaurantUsersAPI.md#restaurantuserspost) | **POST** /api/restaurantusers | 


# **restaurantUsersCreateInvitation**
```swift
    open class func restaurantUsersCreateInvitation(createInvitationPostViewModel: CreateInvitationPostViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createInvitationPostViewModel = CreateInvitationPostViewModel(restaurantId: 123, email: "email_example") // CreateInvitationPostViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

RestaurantUsersAPI.restaurantUsersCreateInvitation(createInvitationPostViewModel: createInvitationPostViewModel, apiVersion: apiVersion) { (response, error) in
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
 **createInvitationPostViewModel** | [**CreateInvitationPostViewModel**](CreateInvitationPostViewModel.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantUsersDelete**
```swift
    open class func restaurantUsersDelete(id: String, restaurantId: Int64? = nil, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let restaurantId = 987 // Int64 |  (optional)
let apiVersion = "apiVersion_example" // String |  (optional)

RestaurantUsersAPI.restaurantUsersDelete(id: id, restaurantId: restaurantId, apiVersion: apiVersion) { (response, error) in
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
 **id** | **String** |  | 
 **restaurantId** | **Int64** |  | [optional] 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantUsersGet**
```swift
    open class func restaurantUsersGet(restaurantId: Int64? = nil, apiVersion: String? = nil, completion: @escaping (_ data: UserViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let restaurantId = 987 // Int64 |  (optional)
let apiVersion = "apiVersion_example" // String |  (optional)

RestaurantUsersAPI.restaurantUsersGet(restaurantId: restaurantId, apiVersion: apiVersion) { (response, error) in
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
 **apiVersion** | **String** |  | [optional] 

### Return type

[**UserViewModel**](UserViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantUsersPost**
```swift
    open class func restaurantUsersPost(restaurantId: Int64? = nil, userId: String? = nil, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let restaurantId = 987 // Int64 |  (optional)
let userId = "userId_example" // String |  (optional)
let apiVersion = "apiVersion_example" // String |  (optional)

RestaurantUsersAPI.restaurantUsersPost(restaurantId: restaurantId, userId: userId, apiVersion: apiVersion) { (response, error) in
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
 **userId** | **String** |  | [optional] 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

