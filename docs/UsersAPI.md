# UsersAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersAssignRoles**](UsersAPI.md#usersassignroles) | **POST** /api/users/{id}/roles | Update a user&#39;s assigned roles.
[**usersConfirmEmail**](UsersAPI.md#usersconfirmemail) | **GET** /api/users/confirm-email | Confirm email address for a user.
[**usersConfirmPhoneNumber**](UsersAPI.md#usersconfirmphonenumber) | **GET** /api/users/confirm-phone-number | Confirm phone number for a user.
[**usersCreate**](UsersAPI.md#userscreate) | **POST** /api/users | Creates a new user.
[**usersForgotPassword**](UsersAPI.md#usersforgotpassword) | **POST** /api/users/forgot-password | Request a password reset email for a user.
[**usersGetById**](UsersAPI.md#usersgetbyid) | **GET** /api/users/{id} | Get a user&#39;s details.
[**usersGetList**](UsersAPI.md#usersgetlist) | **GET** /api/users | Get list of all users.
[**usersGetRoles**](UsersAPI.md#usersgetroles) | **GET** /api/users/{id}/roles | Get a user&#39;s roles.
[**usersResetPassword**](UsersAPI.md#usersresetpassword) | **POST** /api/users/reset-password | Reset a user&#39;s password.
[**usersSelfRegister**](UsersAPI.md#usersselfregister) | **POST** /api/users/self-register | Anonymous user creates a user.
[**usersToggleStatus**](UsersAPI.md#userstogglestatus) | **POST** /api/users/{id}/toggle-status | Toggle a user&#39;s active status.
[**usersUpdate**](UsersAPI.md#usersupdate) | **PUT** /api/users/{id} | Updates a user.


# **usersAssignRoles**
```swift
    open class func usersAssignRoles(id: String, userRolesRequest: UserRolesRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Update a user's assigned roles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let userRolesRequest = UserRolesRequest(userRoles: [UserRoleDto(roleId: "roleId_example", roleName: "roleName_example", description: "description_example", enabled: false)]) // UserRolesRequest | 

// Update a user's assigned roles.
UsersAPI.usersAssignRoles(id: id, userRolesRequest: userRolesRequest) { (response, error) in
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
 **userRolesRequest** | [**UserRolesRequest**](UserRolesRequest.md) |  | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersConfirmEmail**
```swift
    open class func usersConfirmEmail(userId: String? = nil, code: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Confirm email address for a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = "userId_example" // String |  (optional)
let code = "code_example" // String |  (optional)

// Confirm email address for a user.
UsersAPI.usersConfirmEmail(userId: userId, code: code) { (response, error) in
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
 **userId** | **String** |  | [optional] 
 **code** | **String** |  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersConfirmPhoneNumber**
```swift
    open class func usersConfirmPhoneNumber(userId: String? = nil, code: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Confirm phone number for a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = "userId_example" // String |  (optional)
let code = "code_example" // String |  (optional)

// Confirm phone number for a user.
UsersAPI.usersConfirmPhoneNumber(userId: userId, code: code) { (response, error) in
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
 **userId** | **String** |  | [optional] 
 **code** | **String** |  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersCreate**
```swift
    open class func usersCreate(createUserRequest: CreateUserRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Creates a new user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createUserRequest = CreateUserRequest(firstName: "firstName_example", lastName: "lastName_example", email: "email_example", userName: "userName_example", password: "password_example", confirmPassword: "confirmPassword_example", phoneNumber: "phoneNumber_example", merchantGatewayId: "merchantGatewayId_example", emailConfirmed: false, isActive: false, selectedRestaurantId: 123, roles: ["roles_example"]) // CreateUserRequest | 

// Creates a new user.
UsersAPI.usersCreate(createUserRequest: createUserRequest) { (response, error) in
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
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md) |  | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersForgotPassword**
```swift
    open class func usersForgotPassword(forgotPasswordRequest: ForgotPasswordRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Request a password reset email for a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let forgotPasswordRequest = ForgotPasswordRequest(email: "email_example") // ForgotPasswordRequest | 

// Request a password reset email for a user.
UsersAPI.usersForgotPassword(forgotPasswordRequest: forgotPasswordRequest) { (response, error) in
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
 **forgotPasswordRequest** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md) |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetById**
```swift
    open class func usersGetById(id: String, completion: @escaping (_ data: UserDetailsDto?, _ error: Error?) -> Void)
```

Get a user's details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Get a user's details.
UsersAPI.usersGetById(id: id) { (response, error) in
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

[**UserDetailsDto**](UserDetailsDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetList**
```swift
    open class func usersGetList(completion: @escaping (_ data: [UserDetailsDto]?, _ error: Error?) -> Void)
```

Get list of all users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get list of all users.
UsersAPI.usersGetList() { (response, error) in
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

[**[UserDetailsDto]**](UserDetailsDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetRoles**
```swift
    open class func usersGetRoles(id: String, completion: @escaping (_ data: [UserRoleDto]?, _ error: Error?) -> Void)
```

Get a user's roles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Get a user's roles.
UsersAPI.usersGetRoles(id: id) { (response, error) in
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

[**[UserRoleDto]**](UserRoleDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersResetPassword**
```swift
    open class func usersResetPassword(resetPasswordRequest: ResetPasswordRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Reset a user's password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let resetPasswordRequest = ResetPasswordRequest(email: "email_example", password: "password_example", token: "token_example") // ResetPasswordRequest | 

// Reset a user's password.
UsersAPI.usersResetPassword(resetPasswordRequest: resetPasswordRequest) { (response, error) in
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
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md) |  | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersSelfRegister**
```swift
    open class func usersSelfRegister(createUserRequest: CreateUserRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Anonymous user creates a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createUserRequest = CreateUserRequest(firstName: "firstName_example", lastName: "lastName_example", email: "email_example", userName: "userName_example", password: "password_example", confirmPassword: "confirmPassword_example", phoneNumber: "phoneNumber_example", merchantGatewayId: "merchantGatewayId_example", emailConfirmed: false, isActive: false, selectedRestaurantId: 123, roles: ["roles_example"]) // CreateUserRequest | 

// Anonymous user creates a user.
UsersAPI.usersSelfRegister(createUserRequest: createUserRequest) { (response, error) in
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
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md) |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersToggleStatus**
```swift
    open class func usersToggleStatus(id: String, toggleUserStatusRequest: ToggleUserStatusRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Toggle a user's active status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let toggleUserStatusRequest = ToggleUserStatusRequest(activateUser: false, userId: "userId_example") // ToggleUserStatusRequest | 

// Toggle a user's active status.
UsersAPI.usersToggleStatus(id: id, toggleUserStatusRequest: toggleUserStatusRequest) { (response, error) in
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
 **toggleUserStatusRequest** | [**ToggleUserStatusRequest**](ToggleUserStatusRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdate**
```swift
    open class func usersUpdate(id: String, updateUserRequest: UpdateUserRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateUserRequest = UpdateUserRequest(id: "id_example", firstName: "firstName_example", lastName: "lastName_example", phoneNumber: "phoneNumber_example", email: "email_example", configuration: "configuration_example", accountNumber: "accountNumber_example", monthlyPrice: 123, roles: ["roles_example"]) // UpdateUserRequest | 

// Updates a user.
UsersAPI.usersUpdate(id: id, updateUserRequest: updateUserRequest) { (response, error) in
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
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

