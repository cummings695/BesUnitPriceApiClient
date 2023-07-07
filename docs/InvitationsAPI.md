# InvitationsAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invitationsAcceptInvitation**](InvitationsAPI.md#invitationsacceptinvitation) | **POST** /api/invitations/{id}/accept | 
[**invitationsCreateInvitation**](InvitationsAPI.md#invitationscreateinvitation) | **POST** /api/invitations/invite | 
[**invitationsGet**](InvitationsAPI.md#invitationsget) | **GET** /api/invitations/{id} | 


# **invitationsAcceptInvitation**
```swift
    open class func invitationsAcceptInvitation(id: String, acceptInvitationCommand: AcceptInvitationCommand, completion: @escaping (_ data: InvitationDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let acceptInvitationCommand = AcceptInvitationCommand(invitationId: "invitationId_example", firstName: "firstName_example", lastName: "lastName_example", phoneNumber: "phoneNumber_example", password: "password_example") // AcceptInvitationCommand | 

InvitationsAPI.invitationsAcceptInvitation(id: id, acceptInvitationCommand: acceptInvitationCommand) { (response, error) in
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
 **acceptInvitationCommand** | [**AcceptInvitationCommand**](AcceptInvitationCommand.md) |  | 

### Return type

[**InvitationDto**](InvitationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invitationsCreateInvitation**
```swift
    open class func invitationsCreateInvitation(createInvitationCommand: CreateInvitationCommand, completion: @escaping (_ data: InvitationDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createInvitationCommand = CreateInvitationCommand(restaurantId: 123, email: "email_example", role: "role_example", vendor: 123) // CreateInvitationCommand | 

InvitationsAPI.invitationsCreateInvitation(createInvitationCommand: createInvitationCommand) { (response, error) in
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

# **invitationsGet**
```swift
    open class func invitationsGet(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

InvitationsAPI.invitationsGet(id: id) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

