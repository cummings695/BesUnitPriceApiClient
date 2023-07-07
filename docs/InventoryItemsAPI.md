# InventoryItemsAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inventoryItemsAddMockInventoryItems**](InventoryItemsAPI.md#inventoryitemsaddmockinventoryitems) | **POST** /api/inventoryitems/mock | 
[**inventoryItemsAddVendor**](InventoryItemsAPI.md#inventoryitemsaddvendor) | **POST** /api/inventoryitems/{inventoryItemId}/vendor/{vendorId} | 
[**inventoryItemsCreate**](InventoryItemsAPI.md#inventoryitemscreate) | **POST** /api/inventoryitems | Create a new Inventory Item.
[**inventoryItemsDelete**](InventoryItemsAPI.md#inventoryitemsdelete) | **DELETE** /api/inventoryitems/{id} | 
[**inventoryItemsDeleteVendor**](InventoryItemsAPI.md#inventoryitemsdeletevendor) | **DELETE** /api/inventoryitems/{id}/vendor/{productPriceId} | 
[**inventoryItemsFind**](InventoryItemsAPI.md#inventoryitemsfind) | **GET** /api/inventoryitems | 
[**inventoryItemsGet**](InventoryItemsAPI.md#inventoryitemsget) | **GET** /api/inventoryitems/{id} | 
[**inventoryItemsGetAveragePricing**](InventoryItemsAPI.md#inventoryitemsgetaveragepricing) | **GET** /api/inventoryitems/{id}/price/average | 
[**inventoryItemsGetAverageVendorPricing**](InventoryItemsAPI.md#inventoryitemsgetaveragevendorpricing) | **GET** /api/inventoryitems/{id}/vendor/{vendorId}/price/average | 
[**inventoryItemsGetPdf**](InventoryItemsAPI.md#inventoryitemsgetpdf) | **GET** /api/inventoryitems/pdf | 
[**inventoryItemsGetProductVendorPriceHistory**](InventoryItemsAPI.md#inventoryitemsgetproductvendorpricehistory) | **GET** /api/inventoryitems/{InventoryItemId}/price/{ProductPriceId}/history | 
[**inventoryItemsPatchVendor**](InventoryItemsAPI.md#inventoryitemspatchvendor) | **PATCH** /api/inventoryitems/{id}/vendor/{vendorId} | 
[**inventoryItemsSearchGET**](InventoryItemsAPI.md#inventoryitemssearchget) | **GET** /api/inventoryitems/search | 
[**inventoryItemsSearchPOST**](InventoryItemsAPI.md#inventoryitemssearchpost) | **POST** /api/inventoryitems/search | Search Items using available filters.
[**inventoryItemsUpdate**](InventoryItemsAPI.md#inventoryitemsupdate) | **PUT** /api/inventoryitems/{id} | 
[**inventoryItemsUpdateVendor**](InventoryItemsAPI.md#inventoryitemsupdatevendor) | **PUT** /api/inventoryitems/{inventoryItemId}/vendor/{productPriceId} | 


# **inventoryItemsAddMockInventoryItems**
```swift
    open class func inventoryItemsAddMockInventoryItems(mockInventoryItemsPostDto: MockInventoryItemsPostDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let mockInventoryItemsPostDto = MockInventoryItemsPostDto(count: 123) // MockInventoryItemsPostDto | 

InventoryItemsAPI.inventoryItemsAddMockInventoryItems(mockInventoryItemsPostDto: mockInventoryItemsPostDto) { (response, error) in
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
 **mockInventoryItemsPostDto** | [**MockInventoryItemsPostDto**](MockInventoryItemsPostDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsAddVendor**
```swift
    open class func inventoryItemsAddVendor(inventoryItemId: Int64, vendorId: Int64, createInventoryItemVendorPriceCommand: CreateInventoryItemVendorPriceCommand, completion: @escaping (_ data: InventoryItemDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inventoryItemId = 987 // Int64 | 
let vendorId = 987 // Int64 | 
let createInventoryItemVendorPriceCommand = CreateInventoryItemVendorPriceCommand(inventoryItemId: 123, vendorId: 123, quantity: 123, count: 123, packPrice: 123, itemNumber: "itemNumber_example", brand: "brand_example", vendorDescription: "vendorDescription_example") // CreateInventoryItemVendorPriceCommand | 

InventoryItemsAPI.inventoryItemsAddVendor(inventoryItemId: inventoryItemId, vendorId: vendorId, createInventoryItemVendorPriceCommand: createInventoryItemVendorPriceCommand) { (response, error) in
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
 **inventoryItemId** | **Int64** |  | 
 **vendorId** | **Int64** |  | 
 **createInventoryItemVendorPriceCommand** | [**CreateInventoryItemVendorPriceCommand**](CreateInventoryItemVendorPriceCommand.md) |  | 

### Return type

[**InventoryItemDto**](InventoryItemDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsCreate**
```swift
    open class func inventoryItemsCreate(createInventoryItemCommand: CreateInventoryItemCommand, completion: @escaping (_ data: InventoryItemDto?, _ error: Error?) -> Void)
```

Create a new Inventory Item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createInventoryItemCommand = CreateInventoryItemCommand(baseQuantity: 123, currentQuantity: 123, orderAmount: 123, ownerId: 123, zoneId: 123, shelvingUnitId: 123, shelfNumber: 123, active: false, name: "name_example", notes: "notes_example", defaultUnitOfMeasureId: 123, defaultQuantity: 123, defaultCount: 123) // CreateInventoryItemCommand | 

// Create a new Inventory Item.
InventoryItemsAPI.inventoryItemsCreate(createInventoryItemCommand: createInventoryItemCommand) { (response, error) in
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
 **createInventoryItemCommand** | [**CreateInventoryItemCommand**](CreateInventoryItemCommand.md) |  | 

### Return type

[**InventoryItemDto**](InventoryItemDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsDelete**
```swift
    open class func inventoryItemsDelete(id: Int64, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

InventoryItemsAPI.inventoryItemsDelete(id: id) { (response, error) in
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

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsDeleteVendor**
```swift
    open class func inventoryItemsDeleteVendor(id: Int64, productPriceId: Int64, completion: @escaping (_ data: InventoryItemDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let productPriceId = 987 // Int64 | 

InventoryItemsAPI.inventoryItemsDeleteVendor(id: id, productPriceId: productPriceId) { (response, error) in
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
 **productPriceId** | **Int64** |  | 

### Return type

[**InventoryItemDto**](InventoryItemDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsFind**
```swift
    open class func inventoryItemsFind(zoneId: Int64? = nil, name: String? = nil, orderCode: String? = nil, restaurantId: Int64? = nil, hydrationLevel: Int? = nil, active: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, sort: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let zoneId = 987 // Int64 |  (optional)
let name = "name_example" // String |  (optional)
let orderCode = "orderCode_example" // String |  (optional)
let restaurantId = 987 // Int64 |  (optional)
let hydrationLevel = 987 // Int |  (optional)
let active = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let sort = "sort_example" // String |  (optional)

InventoryItemsAPI.inventoryItemsFind(zoneId: zoneId, name: name, orderCode: orderCode, restaurantId: restaurantId, hydrationLevel: hydrationLevel, active: active, page: page, pageSize: pageSize, sort: sort) { (response, error) in
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
 **zoneId** | **Int64** |  | [optional] 
 **name** | **String** |  | [optional] 
 **orderCode** | **String** |  | [optional] 
 **restaurantId** | **Int64** |  | [optional] 
 **hydrationLevel** | **Int** |  | [optional] 
 **active** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **sort** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsGet**
```swift
    open class func inventoryItemsGet(id: Int64, completion: @escaping (_ data: InventoryItemDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

InventoryItemsAPI.inventoryItemsGet(id: id) { (response, error) in
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

### Return type

[**InventoryItemDto**](InventoryItemDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsGetAveragePricing**
```swift
    open class func inventoryItemsGetAveragePricing(id: Int64, completion: @escaping (_ data: VendorSuggestionsViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

InventoryItemsAPI.inventoryItemsGetAveragePricing(id: id) { (response, error) in
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

### Return type

[**VendorSuggestionsViewModel**](VendorSuggestionsViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsGetAverageVendorPricing**
```swift
    open class func inventoryItemsGetAverageVendorPricing(id: Int64, vendorId: Int64, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let vendorId = 987 // Int64 | 

InventoryItemsAPI.inventoryItemsGetAverageVendorPricing(id: id, vendorId: vendorId) { (response, error) in
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
 **vendorId** | **Int64** |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsGetPdf**
```swift
    open class func inventoryItemsGetPdf(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


InventoryItemsAPI.inventoryItemsGetPdf() { (response, error) in
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

# **inventoryItemsGetProductVendorPriceHistory**
```swift
    open class func inventoryItemsGetProductVendorPriceHistory(inventoryItemId: Int64, productPriceId: Int64, completion: @escaping (_ data: [ProductPriceHistoryDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inventoryItemId = 987 // Int64 | 
let productPriceId = 987 // Int64 | 

InventoryItemsAPI.inventoryItemsGetProductVendorPriceHistory(inventoryItemId: inventoryItemId, productPriceId: productPriceId) { (response, error) in
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
 **inventoryItemId** | **Int64** |  | 
 **productPriceId** | **Int64** |  | 

### Return type

[**[ProductPriceHistoryDto]**](ProductPriceHistoryDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsPatchVendor**
```swift
    open class func inventoryItemsPatchVendor(id: Int64, vendorId: Int64, productPricePatchViewModel: ProductPricePatchViewModel, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let vendorId = 987 // Int64 | 
let productPricePatchViewModel = ProductPricePatchViewModel(id: 123, vendorId: 123, orderCode: "orderCode_example") // ProductPricePatchViewModel | 

InventoryItemsAPI.inventoryItemsPatchVendor(id: id, vendorId: vendorId, productPricePatchViewModel: productPricePatchViewModel) { (response, error) in
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
 **vendorId** | **Int64** |  | 
 **productPricePatchViewModel** | [**ProductPricePatchViewModel**](ProductPricePatchViewModel.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsSearchGET**
```swift
    open class func inventoryItemsSearchGET(searchTerm: String? = nil, page: Int? = nil, pageSize: Int? = nil, orderBy: [String]? = nil, advancedSearchFields: [String]? = nil, advancedSearchKeyword: String? = nil, keyword: String? = nil, advancedFilterLogic: String? = nil, advancedFilterFilters: [Filter]? = nil, advancedFilterField: String? = nil, advancedFilterOperator: String? = nil, advancedFilterValue: AnyCodable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let searchTerm = "searchTerm_example" // String |  (optional)
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let orderBy = ["inner_example"] // [String] |  (optional)
let advancedSearchFields = ["inner_example"] // [String] |  (optional)
let advancedSearchKeyword = "advancedSearchKeyword_example" // String |  (optional)
let keyword = "keyword_example" // String |  (optional)
let advancedFilterLogic = "advancedFilterLogic_example" // String |  (optional)
let advancedFilterFilters = [Filter(logic: "logic_example", filters: [nil], field: "field_example", _operator: "_operator_example", value: 123)] // [Filter] |  (optional)
let advancedFilterField = "advancedFilterField_example" // String |  (optional)
let advancedFilterOperator = "advancedFilterOperator_example" // String |  (optional)
let advancedFilterValue =  // AnyCodable |  (optional)

InventoryItemsAPI.inventoryItemsSearchGET(searchTerm: searchTerm, page: page, pageSize: pageSize, orderBy: orderBy, advancedSearchFields: advancedSearchFields, advancedSearchKeyword: advancedSearchKeyword, keyword: keyword, advancedFilterLogic: advancedFilterLogic, advancedFilterFilters: advancedFilterFilters, advancedFilterField: advancedFilterField, advancedFilterOperator: advancedFilterOperator, advancedFilterValue: advancedFilterValue) { (response, error) in
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
 **searchTerm** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **orderBy** | [**[String]**](String.md) |  | [optional] 
 **advancedSearchFields** | [**[String]**](String.md) |  | [optional] 
 **advancedSearchKeyword** | **String** |  | [optional] 
 **keyword** | **String** |  | [optional] 
 **advancedFilterLogic** | **String** |  | [optional] 
 **advancedFilterFilters** | [**[Filter]**](Filter.md) |  | [optional] 
 **advancedFilterField** | **String** |  | [optional] 
 **advancedFilterOperator** | **String** |  | [optional] 
 **advancedFilterValue** | [**AnyCodable**](.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsSearchPOST**
```swift
    open class func inventoryItemsSearchPOST(getInventoryItemsQuery: GetInventoryItemsQuery, completion: @escaping (_ data: PaginatedListViewModelOfInventoryItemDto?, _ error: Error?) -> Void)
```

Search Items using available filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let getInventoryItemsQuery = GetInventoryItemsQuery(zoneId: 123, name: "name_example", orderCode: "orderCode_example", restaurantId: 123, hydrationLevel: 123, active: false, page: 123, pageSize: 123, sort: "sort_example") // GetInventoryItemsQuery | 

// Search Items using available filters.
InventoryItemsAPI.inventoryItemsSearchPOST(getInventoryItemsQuery: getInventoryItemsQuery) { (response, error) in
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
 **getInventoryItemsQuery** | [**GetInventoryItemsQuery**](GetInventoryItemsQuery.md) |  | 

### Return type

[**PaginatedListViewModelOfInventoryItemDto**](PaginatedListViewModelOfInventoryItemDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsUpdate**
```swift
    open class func inventoryItemsUpdate(id: Int64, updateInventoryItemCommand: UpdateInventoryItemCommand, completion: @escaping (_ data: InventoryItemDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let updateInventoryItemCommand = UpdateInventoryItemCommand(id: 123, name: "name_example", notes: "notes_example", defaultUnitOfMeasureId: 123, defaultQuantity: 123, defaultCount: 123, baseQuantity: 123, currentQuantity: 123, orderAmount: 123, ownerId: 123, zoneId: 123, shelvingUnitId: 123, shelfNumber: 123, active: false) // UpdateInventoryItemCommand | 

InventoryItemsAPI.inventoryItemsUpdate(id: id, updateInventoryItemCommand: updateInventoryItemCommand) { (response, error) in
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
 **updateInventoryItemCommand** | [**UpdateInventoryItemCommand**](UpdateInventoryItemCommand.md) |  | 

### Return type

[**InventoryItemDto**](InventoryItemDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemsUpdateVendor**
```swift
    open class func inventoryItemsUpdateVendor(inventoryItemId: Int64, productPriceId: Int64, updateInventoryItemVendorPriceCommand: UpdateInventoryItemVendorPriceCommand, completion: @escaping (_ data: InventoryItemDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inventoryItemId = 987 // Int64 | 
let productPriceId = 987 // Int64 | 
let updateInventoryItemVendorPriceCommand = UpdateInventoryItemVendorPriceCommand(productPriceId: 123, inventoryItemId: 123, vendorId: 123, deleted: false, productInfoId: 123, productInfoOrderCode: "productInfoOrderCode_example", productInfoBrand: "productInfoBrand_example", productInfoQuantity: 123, productInfoDescription: "productInfoDescription_example", productInfoVendorDescription: "productInfoVendorDescription_example", productInfoCount: 123, productInfoUnitOfMeasureId: 123, productInfoDeselected: false, productInfoPrice: 123, productInfoUnitPrice: 123, productInfoIsPreferred: false, productInfoManufacturerCode: "productInfoManufacturerCode_example") // UpdateInventoryItemVendorPriceCommand | 

InventoryItemsAPI.inventoryItemsUpdateVendor(inventoryItemId: inventoryItemId, productPriceId: productPriceId, updateInventoryItemVendorPriceCommand: updateInventoryItemVendorPriceCommand) { (response, error) in
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
 **inventoryItemId** | **Int64** |  | 
 **productPriceId** | **Int64** |  | 
 **updateInventoryItemVendorPriceCommand** | [**UpdateInventoryItemVendorPriceCommand**](UpdateInventoryItemVendorPriceCommand.md) |  | 

### Return type

[**InventoryItemDto**](InventoryItemDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

