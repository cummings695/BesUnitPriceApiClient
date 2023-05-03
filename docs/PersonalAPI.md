# PersonalAPI

All URIs are relative to *https://zwr8hzk4-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**personalChangePassword**](PersonalAPI.md#personalchangepassword) | **PUT** /api/personal/password | Change Password of currently logged in user.
[**personalGetCurrentUserIsOwner**](PersonalAPI.md#personalgetcurrentuserisowner) | **GET** /api/personal/owner | 
[**personalGetCurrentUserRestaurants**](PersonalAPI.md#personalgetcurrentuserrestaurants) | **GET** /api/personal/restuarants | 
[**personalGetLogs**](PersonalAPI.md#personalgetlogs) | **GET** /api/personal/logs | Get audit logs of currently logged in user.
[**personalGetPermissions**](PersonalAPI.md#personalgetpermissions) | **GET** /api/personal/permissions | Get permissions of currently logged in user.
[**personalGetProfile**](PersonalAPI.md#personalgetprofile) | **GET** /api/personal | Get profile details of currently logged in user.
[**personalUpdateProfile**](PersonalAPI.md#personalupdateprofile) | **PUT** /api/personal | Update profile details of currently logged in user.
[**personalUpdateUserSettings**](PersonalAPI.md#personalupdateusersettings) | **PUT** /api/personal/settings | 


# **personalChangePassword**
```swift
    open class func personalChangePassword(changePasswordRequest: ChangePasswordRequest, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Change Password of currently logged in user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let changePasswordRequest = ChangePasswordRequest(password: "password_example", newPassword: "newPassword_example", confirmNewPassword: "confirmNewPassword_example") // ChangePasswordRequest | 

// Change Password of currently logged in user.
PersonalAPI.personalChangePassword(changePasswordRequest: changePasswordRequest) { (response, error) in
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
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md) |  | 

### Return type

**Bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **personalGetCurrentUserIsOwner**
```swift
    open class func personalGetCurrentUserIsOwner(completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


PersonalAPI.personalGetCurrentUserIsOwner() { (response, error) in
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

**Bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **personalGetCurrentUserRestaurants**
```swift
    open class func personalGetCurrentUserRestaurants(completion: @escaping (_ data: PaginationResponseOfRestaurantDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


PersonalAPI.personalGetCurrentUserRestaurants() { (response, error) in
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

[**PaginationResponseOfRestaurantDto**](PaginationResponseOfRestaurantDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **personalGetLogs**
```swift
    open class func personalGetLogs(completion: @escaping (_ data: [AuditDto]?, _ error: Error?) -> Void)
```

Get audit logs of currently logged in user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get audit logs of currently logged in user.
PersonalAPI.personalGetLogs() { (response, error) in
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

[**[AuditDto]**](AuditDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **personalGetPermissions**
```swift
    open class func personalGetPermissions(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get permissions of currently logged in user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get permissions of currently logged in user.
PersonalAPI.personalGetPermissions() { (response, error) in
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

**[String]**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **personalGetProfile**
```swift
    open class func personalGetProfile(completion: @escaping (_ data: UserDetailsDto?, _ error: Error?) -> Void)
```

Get profile details of currently logged in user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get profile details of currently logged in user.
PersonalAPI.personalGetProfile() { (response, error) in
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

[**UserDetailsDto**](UserDetailsDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **personalUpdateProfile**
```swift
    open class func personalUpdateProfile(updateUserRequest: UpdateUserRequest, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update profile details of currently logged in user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateUserRequest = UpdateUserRequest(id: "id_example", firstName: "firstName_example", lastName: "lastName_example", phoneNumber: "phoneNumber_example", email: "email_example", configuration: "configuration_example", accountNumber: "accountNumber_example", monthlyPrice: 123, roles: ["roles_example"]) // UpdateUserRequest | 

// Update profile details of currently logged in user.
PersonalAPI.personalUpdateProfile(updateUserRequest: updateUserRequest) { (response, error) in
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
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md) |  | 

### Return type

**Bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **personalUpdateUserSettings**
```swift
    open class func personalUpdateUserSettings(updateUserSettingsCommand: UpdateUserSettingsCommand, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateUserSettingsCommand = UpdateUserSettingsCommand(restaurantId: 123) // UpdateUserSettingsCommand | 

PersonalAPI.personalUpdateUserSettings(updateUserSettingsCommand: updateUserSettingsCommand) { (response, error) in
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
 **updateUserSettingsCommand** | [**UpdateUserSettingsCommand**](UpdateUserSettingsCommand.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

