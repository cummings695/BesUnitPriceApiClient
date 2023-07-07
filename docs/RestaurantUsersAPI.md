# RestaurantUsersAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**restaurantUsersCreateInvitation**](RestaurantUsersAPI.md#restaurantuserscreateinvitation) | **POST** /api/restaurantusers/invite | 
[**restaurantUsersDelete**](RestaurantUsersAPI.md#restaurantusersdelete) | **DELETE** /api/restaurantusers/{id} | 
[**restaurantUsersGet**](RestaurantUsersAPI.md#restaurantusersget) | **GET** /api/restaurantusers | 
[**restaurantUsersPost**](RestaurantUsersAPI.md#restaurantuserspost) | **POST** /api/restaurantusers | 


# **restaurantUsersCreateInvitation**
```swift
    open class func restaurantUsersCreateInvitation(createInvitationCommand: CreateInvitationCommand, completion: @escaping (_ data: InvitationDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createInvitationCommand = CreateInvitationCommand(restaurantId: 123, email: "email_example", role: "role_example", vendor: 123) // CreateInvitationCommand | 

RestaurantUsersAPI.restaurantUsersCreateInvitation(createInvitationCommand: createInvitationCommand) { (response, error) in
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
 **createInvitationCommand** | [**CreateInvitationCommand**](CreateInvitationCommand.md) |  | 

### Return type

[**InvitationDto**](InvitationDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantUsersDelete**
```swift
    open class func restaurantUsersDelete(id: String, restaurantId: Int64? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let restaurantId = 987 // Int64 |  (optional)

RestaurantUsersAPI.restaurantUsersDelete(id: id, restaurantId: restaurantId) { (response, error) in
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
    open class func restaurantUsersGet(restaurantId: Int64? = nil, completion: @escaping (_ data: [RestaurantUserDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let restaurantId = 987 // Int64 |  (optional)

RestaurantUsersAPI.restaurantUsersGet(restaurantId: restaurantId) { (response, error) in
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

### Return type

[**[RestaurantUserDto]**](RestaurantUserDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantUsersPost**
```swift
    open class func restaurantUsersPost(restaurantId: Int64? = nil, userId: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let restaurantId = 987 // Int64 |  (optional)
let userId = "userId_example" // String |  (optional)

RestaurantUsersAPI.restaurantUsersPost(restaurantId: restaurantId, userId: userId) { (response, error) in
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

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

