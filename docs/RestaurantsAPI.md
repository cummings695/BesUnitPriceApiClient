# RestaurantsAPI

All URIs are relative to *https://zwr8hzk4-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**restaurantsAddProductToRestaurant**](RestaurantsAPI.md#restaurantsaddproducttorestaurant) | **POST** /api/restaurants/current/product | 
[**restaurantsDelete**](RestaurantsAPI.md#restaurantsdelete) | **DELETE** /api/restaurants/{id} | 
[**restaurantsGet**](RestaurantsAPI.md#restaurantsget) | **GET** /api/restaurants/{id} | 
[**restaurantsGetAll**](RestaurantsAPI.md#restaurantsgetall) | **GET** /api/restaurants | 
[**restaurantsGetCurrentUserRestaurants**](RestaurantsAPI.md#restaurantsgetcurrentuserrestaurants) | **GET** /api/restaurants/mine | 
[**restaurantsImport**](RestaurantsAPI.md#restaurantsimport) | **PUT** /api/restaurants/{id}/import | 
[**restaurantsPost**](RestaurantsAPI.md#restaurantspost) | **POST** /api/restaurants | 
[**restaurantsPut**](RestaurantsAPI.md#restaurantsput) | **PUT** /api/restaurants/{id} | Update a restaurant


# **restaurantsAddProductToRestaurant**
```swift
    open class func restaurantsAddProductToRestaurant(addProductToRestaurantCommand: AddProductToRestaurantCommand, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let addProductToRestaurantCommand = AddProductToRestaurantCommand(id: 123) // AddProductToRestaurantCommand | 

RestaurantsAPI.restaurantsAddProductToRestaurant(addProductToRestaurantCommand: addProductToRestaurantCommand) { (response, error) in
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
 **addProductToRestaurantCommand** | [**AddProductToRestaurantCommand**](AddProductToRestaurantCommand.md) |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsDelete**
```swift
    open class func restaurantsDelete(id: Int, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

RestaurantsAPI.restaurantsDelete(id: id) { (response, error) in
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

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsGet**
```swift
    open class func restaurantsGet(id: Int, completion: @escaping (_ data: RestaurantViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

RestaurantsAPI.restaurantsGet(id: id) { (response, error) in
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

### Return type

[**RestaurantViewModel**](RestaurantViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsGetAll**
```swift
    open class func restaurantsGetAll(completion: @escaping (_ data: [RestaurantDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RestaurantsAPI.restaurantsGetAll() { (response, error) in
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

[**[RestaurantDto]**](RestaurantDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsGetCurrentUserRestaurants**
```swift
    open class func restaurantsGetCurrentUserRestaurants(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


RestaurantsAPI.restaurantsGetCurrentUserRestaurants() { (response, error) in
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

# **restaurantsImport**
```swift
    open class func restaurantsImport(id: Int, seedRestaurantCommand: SeedRestaurantCommand, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 
let seedRestaurantCommand = SeedRestaurantCommand(restaurantId: 123) // SeedRestaurantCommand | 

RestaurantsAPI.restaurantsImport(id: id, seedRestaurantCommand: seedRestaurantCommand) { (response, error) in
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
 **seedRestaurantCommand** | [**SeedRestaurantCommand**](SeedRestaurantCommand.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsPost**
```swift
    open class func restaurantsPost(createRestaurantCommand: CreateRestaurantCommand, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createRestaurantCommand = CreateRestaurantCommand(name: "name_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", restaurantId: 123, includeInventoryItems: false, includeZones: false, includeVendorOverrides: false, includeUnitOverrides: false) // CreateRestaurantCommand | 

RestaurantsAPI.restaurantsPost(createRestaurantCommand: createRestaurantCommand) { (response, error) in
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
 **createRestaurantCommand** | [**CreateRestaurantCommand**](CreateRestaurantCommand.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsPut**
```swift
    open class func restaurantsPut(id: Int, updateRestaurantCommand: UpdateRestaurantCommand, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Update a restaurant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 
let updateRestaurantCommand = UpdateRestaurantCommand(id: 123, name: "name_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example") // UpdateRestaurantCommand | 

// Update a restaurant
RestaurantsAPI.restaurantsPut(id: id, updateRestaurantCommand: updateRestaurantCommand) { (response, error) in
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
 **updateRestaurantCommand** | [**UpdateRestaurantCommand**](UpdateRestaurantCommand.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

