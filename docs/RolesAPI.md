# RolesAPI

All URIs are relative to *https://localhost:5001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rolesDelete**](RolesAPI.md#rolesdelete) | **DELETE** /api/roles/{id} | Delete a role.
[**rolesGetById**](RolesAPI.md#rolesgetbyid) | **GET** /api/roles/{id} | Get role details.
[**rolesGetByIdWithPermissions**](RolesAPI.md#rolesgetbyidwithpermissions) | **GET** /api/roles/{id}/permissions | Get role details with its permissions.
[**rolesGetList**](RolesAPI.md#rolesgetlist) | **GET** /api/roles | Get a list of all roles.
[**rolesGetPermissions**](RolesAPI.md#rolesgetpermissions) | **GET** /api/roles/permissions | Get role details with its permissions.
[**rolesRegisterRole**](RolesAPI.md#rolesregisterrole) | **POST** /api/roles | Create or update a role.
[**rolesUpdatePermissions**](RolesAPI.md#rolesupdatepermissions) | **PUT** /api/roles/{id}/permissions | Update a role&#39;s permissions.


# **rolesDelete**
```swift
    open class func rolesDelete(id: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Delete a role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Delete a role.
RolesAPI.rolesDelete(id: id) { (response, error) in
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

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rolesGetById**
```swift
    open class func rolesGetById(id: String, completion: @escaping (_ data: RoleDto?, _ error: Error?) -> Void)
```

Get role details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Get role details.
RolesAPI.rolesGetById(id: id) { (response, error) in
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

[**RoleDto**](RoleDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rolesGetByIdWithPermissions**
```swift
    open class func rolesGetByIdWithPermissions(id: String, completion: @escaping (_ data: RoleDto?, _ error: Error?) -> Void)
```

Get role details with its permissions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Get role details with its permissions.
RolesAPI.rolesGetByIdWithPermissions(id: id) { (response, error) in
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

[**RoleDto**](RoleDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rolesGetList**
```swift
    open class func rolesGetList(completion: @escaping (_ data: [RoleDto]?, _ error: Error?) -> Void)
```

Get a list of all roles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get a list of all roles.
RolesAPI.rolesGetList() { (response, error) in
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

[**[RoleDto]**](RoleDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rolesGetPermissions**
```swift
    open class func rolesGetPermissions(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get role details with its permissions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get role details with its permissions.
RolesAPI.rolesGetPermissions() { (response, error) in
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

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rolesRegisterRole**
```swift
    open class func rolesRegisterRole(createOrUpdateRoleRequest: CreateOrUpdateRoleRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Create or update a role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createOrUpdateRoleRequest = CreateOrUpdateRoleRequest(id: "id_example", name: "name_example", description: "description_example") // CreateOrUpdateRoleRequest | 

// Create or update a role.
RolesAPI.rolesRegisterRole(createOrUpdateRoleRequest: createOrUpdateRoleRequest) { (response, error) in
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
 **createOrUpdateRoleRequest** | [**CreateOrUpdateRoleRequest**](CreateOrUpdateRoleRequest.md) |  | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rolesUpdatePermissions**
```swift
    open class func rolesUpdatePermissions(id: String, updateRolePermissionsRequest: UpdateRolePermissionsRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Update a role's permissions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateRolePermissionsRequest = UpdateRolePermissionsRequest(roleId: "roleId_example", permissions: ["permissions_example"]) // UpdateRolePermissionsRequest | 

// Update a role's permissions.
RolesAPI.rolesUpdatePermissions(id: id, updateRolePermissionsRequest: updateRolePermissionsRequest) { (response, error) in
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
 **updateRolePermissionsRequest** | [**UpdateRolePermissionsRequest**](UpdateRolePermissionsRequest.md) |  | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

