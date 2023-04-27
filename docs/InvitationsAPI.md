# InvitationsAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invitationsAcceptInvitation**](InvitationsAPI.md#invitationsacceptinvitation) | **POST** /api/invitations/{id}/accept | 
[**invitationsCreateInvitation**](InvitationsAPI.md#invitationscreateinvitation) | **POST** /api/invitations/invite | 
[**invitationsGet**](InvitationsAPI.md#invitationsget) | **GET** /api/invitations/{id} | 


# **invitationsAcceptInvitation**
```swift
    open class func invitationsAcceptInvitation(id: String, acceptInvitationPostViewModel: AcceptInvitationPostViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let acceptInvitationPostViewModel = AcceptInvitationPostViewModel(invitationId: "invitationId_example", firstName: "firstName_example", lastName: "lastName_example", phoneNumber: "phoneNumber_example", password: "password_example") // AcceptInvitationPostViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

InvitationsAPI.invitationsAcceptInvitation(id: id, acceptInvitationPostViewModel: acceptInvitationPostViewModel, apiVersion: apiVersion) { (response, error) in
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
 **acceptInvitationPostViewModel** | [**AcceptInvitationPostViewModel**](AcceptInvitationPostViewModel.md) |  | 
 **apiVersion** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invitationsCreateInvitation**
```swift
    open class func invitationsCreateInvitation(createInvitationPostViewModel: CreateInvitationPostViewModel, apiVersion: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createInvitationPostViewModel = CreateInvitationPostViewModel(restaurantId: 123, email: "email_example") // CreateInvitationPostViewModel | 
let apiVersion = "apiVersion_example" // String |  (optional)

InvitationsAPI.invitationsCreateInvitation(createInvitationPostViewModel: createInvitationPostViewModel, apiVersion: apiVersion) { (response, error) in
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

# **invitationsGet**
```swift
    open class func invitationsGet(id: String, apiVersion: String? = nil, completion: @escaping (_ data: InvitationViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let apiVersion = "apiVersion_example" // String |  (optional)

InvitationsAPI.invitationsGet(id: id, apiVersion: apiVersion) { (response, error) in
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
 **apiVersion** | **String** |  | [optional] 

### Return type

[**InvitationViewModel**](InvitationViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

