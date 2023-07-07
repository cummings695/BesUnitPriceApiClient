# BatchesAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchesAddOrderItem**](BatchesAPI.md#batchesaddorderitem) | **POST** /api/batches/{id}/add | 
[**batchesDelete**](BatchesAPI.md#batchesdelete) | **DELETE** /api/batches/{id} | 
[**batchesDeleteOrderItem**](BatchesAPI.md#batchesdeleteorderitem) | **DELETE** /api/batches/{batchId}/items/{id} | 
[**batchesGet**](BatchesAPI.md#batchesget) | **GET** /api/batches | Search Batches using available filters.
[**batchesGet2**](BatchesAPI.md#batchesget2) | **GET** /api/batches/{id} | 
[**batchesGetHeader**](BatchesAPI.md#batchesgetheader) | **GET** /api/batches/{id}/header | 
[**batchesGetPdf**](BatchesAPI.md#batchesgetpdf) | **GET** /api/batches/{id}/pdf | 
[**batchesGetPending**](BatchesAPI.md#batchesgetpending) | **GET** /api/batches/pending | 
[**batchesPost**](BatchesAPI.md#batchespost) | **POST** /api/batches | 
[**batchesPut**](BatchesAPI.md#batchesput) | **PUT** /api/batches/{id} | 
[**batchesSearch**](BatchesAPI.md#batchessearch) | **POST** /api/batches/search | Search Batches using available filters.
[**batchesUpdateOrderItemVendor**](BatchesAPI.md#batchesupdateorderitemvendor) | **POST** /api/batches/{batchId}/item/vendor | 
[**batchesUpdateStatus**](BatchesAPI.md#batchesupdatestatus) | **POST** /api/batches/{id}/status/{statusCode} | 


# **batchesAddOrderItem**
```swift
    open class func batchesAddOrderItem(id: Int64, addOrderItemViewModel: AddOrderItemViewModel, completion: @escaping (_ data: BatchViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let addOrderItemViewModel = AddOrderItemViewModel(inventoryItemId: 123, quantity: 123, inventory: 123) // AddOrderItemViewModel | 

BatchesAPI.batchesAddOrderItem(id: id, addOrderItemViewModel: addOrderItemViewModel) { (response, error) in
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
 **addOrderItemViewModel** | [**AddOrderItemViewModel**](AddOrderItemViewModel.md) |  | 

### Return type

[**BatchViewModel**](BatchViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesDelete**
```swift
    open class func batchesDelete(id: Int, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

BatchesAPI.batchesDelete(id: id) { (response, error) in
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

# **batchesDeleteOrderItem**
```swift
    open class func batchesDeleteOrderItem(batchId: Int64, id: Int64, completion: @escaping (_ data: BatchViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchId = 987 // Int64 | 
let id = 987 // Int64 | 

BatchesAPI.batchesDeleteOrderItem(batchId: batchId, id: id) { (response, error) in
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
 **batchId** | **Int64** |  | 
 **id** | **Int64** |  | 

### Return type

[**BatchViewModel**](BatchViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesGet**
```swift
    open class func batchesGet(status: [Int]? = nil, page: Int? = nil, pageSize: Int? = nil, orderBy: [String]? = nil, advancedSearchFields: [String]? = nil, advancedSearchKeyword: String? = nil, keyword: String? = nil, advancedFilterLogic: String? = nil, advancedFilterFilters: [Filter]? = nil, advancedFilterField: String? = nil, advancedFilterOperator: String? = nil, advancedFilterValue: AnyCodable? = nil, completion: @escaping (_ data: PaginationResponseOfBatchListDto?, _ error: Error?) -> Void)
```

Search Batches using available filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = [123] // [Int] |  (optional)
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

// Search Batches using available filters.
BatchesAPI.batchesGet(status: status, page: page, pageSize: pageSize, orderBy: orderBy, advancedSearchFields: advancedSearchFields, advancedSearchKeyword: advancedSearchKeyword, keyword: keyword, advancedFilterLogic: advancedFilterLogic, advancedFilterFilters: advancedFilterFilters, advancedFilterField: advancedFilterField, advancedFilterOperator: advancedFilterOperator, advancedFilterValue: advancedFilterValue) { (response, error) in
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
 **status** | [**[Int]**](Int.md) |  | [optional] 
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

[**PaginationResponseOfBatchListDto**](PaginationResponseOfBatchListDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesGet2**
```swift
    open class func batchesGet2(id: Int64, completion: @escaping (_ data: BatchViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

BatchesAPI.batchesGet2(id: id) { (response, error) in
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

[**BatchViewModel**](BatchViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesGetHeader**
```swift
    open class func batchesGetHeader(id: Int64, completion: @escaping (_ data: BatchViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

BatchesAPI.batchesGetHeader(id: id) { (response, error) in
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

[**BatchViewModel**](BatchViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesGetPdf**
```swift
    open class func batchesGetPdf(id: Int64, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 

BatchesAPI.batchesGetPdf(id: id) { (response, error) in
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

# **batchesGetPending**
```swift
    open class func batchesGetPending(completion: @escaping (_ data: BatchDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


BatchesAPI.batchesGetPending() { (response, error) in
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

[**BatchDto**](BatchDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesPost**
```swift
    open class func batchesPost(batchViewModel: BatchViewModel, completion: @escaping (_ data: BatchViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchViewModel = BatchViewModel(id: 123, number: "number_example", orders: [OrderViewModel(createdDate: Date(), totalPrice: 123, estimatedPrice: 123, items: [OrderItemViewModel(name: "name_example", brand: "brand_example", unitPrice: 123, quantity: 123, receivedQuantity: 123, itemPrice: 123, receivedPrice: 123, receivedUnitPrice: 123, orderCode: "orderCode_example", totalPrice: 123, receivedTotal: 123, productId: 123, product: ProductViewModel(name: "name_example", notes: "notes_example", prices: [ProductPriceViewModel(comparison: 123, vendorId: 123, vendor: VendorViewModel(name: "name_example", contactName: "contactName_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", email: "email_example", phone1: "phone1_example", phone2: "phone2_example", fax: "fax_example", cellPhone: "cellPhone_example", notes: "notes_example", minimumOrder: 123, accountNumber: "accountNumber_example", orderTotal: 123, incentivePercentage: 123, color: "color_example", sortOrder: 123, active: false, website: "website_example", contactEmail: "contactEmail_example", geoCached: false, deliveryRange: 123, locations: [VendorLocationViewModel(name: "name_example", contactName: "contactName_example", website: "website_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", latitude: 123, longitude: 123, deliveryRange: 123, active: false, isGeoCoded: false, id: 123)], id: 123), productInfoId: 123, productInfo: ProductInfoViewModel(id: 123, orderCode: "orderCode_example", brand: "brand_example", quantity: 123, description: "description_example", vendorDescription: "vendorDescription_example", count: 123, unitOfMeasureId: 123, unitOfMeasure: UnitViewModel(name: "name_example", abbreviation: "abbreviation_example", locked: false, id: 123), deselected: false, price: 123, unitPrice: 123, priceType: ProductPriceHistoryType(), isPreferred: false, manufacturerCode: "manufacturerCode_example", lastModifiedOn: Date()), deleted: false, vendorDeleted: false, id: 123)], defaultUnitOfMeasureId: 123, defaultUnitOfMeasure: nil, defaultQuantity: 123, defaultCount: 123, id: 123), inventoryItemId: 123, inventoryItem: InventoryItemViewModel(name: "name_example", notes: "notes_example", prices: [nil], defaultUnitOfMeasureId: 123, defaultUnitOfMeasure: nil, defaultQuantity: 123, defaultCount: 123, baseQuantity: 123, currentQuantity: 123, orderAmount: 123, zone: ZoneViewModel(name: "name_example", sortOrder: 123, shelvingUnits: [ShelvingUnitViewModel(unitNumber: 123, shelfAmount: 123, id: 123)], id: 123), shelvingUnit: nil, shelfNumber: 123, active: false, ownerId: 123, zoneId: 123, shelvingUnitId: 123, id: 123), productPriceId: 123, currentInventory: 123, orderId: 123, createdBy: "createdBy_example", lastModifiedBy: "lastModifiedBy_example", createDate: Date(), lastModifiedOn: Date(), previousVendors: [nil], lostSavings: 123, received: false, id: 123)], itemsCount: 123, vendorId: 123, vendor: nil, active: false, statusId: 123, status: OrderStatus(), batchId: 123, invoice: "invoice_example", deliveryDate: Date(), orderDate: Date(), number: "number_example", id: 123)], owner: BatchViewModel_owner(name: "name_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", geoCached: false, id: 123), status: BatchStatus(), deactivatedVendors: [nil], costSavings: BatchViewModel_costSavings(found: 123, lost: 123, net: 123, netPercent: 123, total: 123), active: false, orderDate: Date(), createDate: Date()) // BatchViewModel | 

BatchesAPI.batchesPost(batchViewModel: batchViewModel) { (response, error) in
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
 **batchViewModel** | [**BatchViewModel**](BatchViewModel.md) |  | 

### Return type

[**BatchViewModel**](BatchViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesPut**
```swift
    open class func batchesPut(id: Int, batchViewModel: BatchViewModel, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 
let batchViewModel = BatchViewModel(id: 123, number: "number_example", orders: [OrderViewModel(createdDate: Date(), totalPrice: 123, estimatedPrice: 123, items: [OrderItemViewModel(name: "name_example", brand: "brand_example", unitPrice: 123, quantity: 123, receivedQuantity: 123, itemPrice: 123, receivedPrice: 123, receivedUnitPrice: 123, orderCode: "orderCode_example", totalPrice: 123, receivedTotal: 123, productId: 123, product: ProductViewModel(name: "name_example", notes: "notes_example", prices: [ProductPriceViewModel(comparison: 123, vendorId: 123, vendor: VendorViewModel(name: "name_example", contactName: "contactName_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", email: "email_example", phone1: "phone1_example", phone2: "phone2_example", fax: "fax_example", cellPhone: "cellPhone_example", notes: "notes_example", minimumOrder: 123, accountNumber: "accountNumber_example", orderTotal: 123, incentivePercentage: 123, color: "color_example", sortOrder: 123, active: false, website: "website_example", contactEmail: "contactEmail_example", geoCached: false, deliveryRange: 123, locations: [VendorLocationViewModel(name: "name_example", contactName: "contactName_example", website: "website_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", latitude: 123, longitude: 123, deliveryRange: 123, active: false, isGeoCoded: false, id: 123)], id: 123), productInfoId: 123, productInfo: ProductInfoViewModel(id: 123, orderCode: "orderCode_example", brand: "brand_example", quantity: 123, description: "description_example", vendorDescription: "vendorDescription_example", count: 123, unitOfMeasureId: 123, unitOfMeasure: UnitViewModel(name: "name_example", abbreviation: "abbreviation_example", locked: false, id: 123), deselected: false, price: 123, unitPrice: 123, priceType: ProductPriceHistoryType(), isPreferred: false, manufacturerCode: "manufacturerCode_example", lastModifiedOn: Date()), deleted: false, vendorDeleted: false, id: 123)], defaultUnitOfMeasureId: 123, defaultUnitOfMeasure: nil, defaultQuantity: 123, defaultCount: 123, id: 123), inventoryItemId: 123, inventoryItem: InventoryItemViewModel(name: "name_example", notes: "notes_example", prices: [nil], defaultUnitOfMeasureId: 123, defaultUnitOfMeasure: nil, defaultQuantity: 123, defaultCount: 123, baseQuantity: 123, currentQuantity: 123, orderAmount: 123, zone: ZoneViewModel(name: "name_example", sortOrder: 123, shelvingUnits: [ShelvingUnitViewModel(unitNumber: 123, shelfAmount: 123, id: 123)], id: 123), shelvingUnit: nil, shelfNumber: 123, active: false, ownerId: 123, zoneId: 123, shelvingUnitId: 123, id: 123), productPriceId: 123, currentInventory: 123, orderId: 123, createdBy: "createdBy_example", lastModifiedBy: "lastModifiedBy_example", createDate: Date(), lastModifiedOn: Date(), previousVendors: [nil], lostSavings: 123, received: false, id: 123)], itemsCount: 123, vendorId: 123, vendor: nil, active: false, statusId: 123, status: OrderStatus(), batchId: 123, invoice: "invoice_example", deliveryDate: Date(), orderDate: Date(), number: "number_example", id: 123)], owner: BatchViewModel_owner(name: "name_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", geoCached: false, id: 123), status: BatchStatus(), deactivatedVendors: [nil], costSavings: BatchViewModel_costSavings(found: 123, lost: 123, net: 123, netPercent: 123, total: 123), active: false, orderDate: Date(), createDate: Date()) // BatchViewModel | 

BatchesAPI.batchesPut(id: id, batchViewModel: batchViewModel) { (response, error) in
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
 **batchViewModel** | [**BatchViewModel**](BatchViewModel.md) |  | 

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesSearch**
```swift
    open class func batchesSearch(getBatchListPagedQuery: GetBatchListPagedQuery, completion: @escaping (_ data: PaginationResponseOfBatchListDto?, _ error: Error?) -> Void)
```

Search Batches using available filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let getBatchListPagedQuery = GetBatchListPagedQuery(advancedSearch: BaseFilter_advancedSearch(fields: ["fields_example"], keyword: "keyword_example"), keyword: "keyword_example", advancedFilter: BaseFilter_advancedFilter(logic: "logic_example", filters: [Filter(logic: "logic_example", filters: [nil], field: "field_example", _operator: "_operator_example", value: 123)], field: "field_example", _operator: "_operator_example", value: 123), page: 123, pageSize: 123, orderBy: ["orderBy_example"], status: [123]) // GetBatchListPagedQuery | 

// Search Batches using available filters.
BatchesAPI.batchesSearch(getBatchListPagedQuery: getBatchListPagedQuery) { (response, error) in
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
 **getBatchListPagedQuery** | [**GetBatchListPagedQuery**](GetBatchListPagedQuery.md) |  | 

### Return type

[**PaginationResponseOfBatchListDto**](PaginationResponseOfBatchListDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesUpdateOrderItemVendor**
```swift
    open class func batchesUpdateOrderItemVendor(batchId: Int64, updateOrderItemVendorItemCommand: UpdateOrderItemVendorItemCommand, completion: @escaping (_ data: BatchDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let batchId = 987 // Int64 | 
let updateOrderItemVendorItemCommand = UpdateOrderItemVendorItemCommand(batchId: 123, orderItemId: 123, vendorId: 123, productPriceId: 123) // UpdateOrderItemVendorItemCommand | 

BatchesAPI.batchesUpdateOrderItemVendor(batchId: batchId, updateOrderItemVendorItemCommand: updateOrderItemVendorItemCommand) { (response, error) in
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
 **batchId** | **Int64** |  | 
 **updateOrderItemVendorItemCommand** | [**UpdateOrderItemVendorItemCommand**](UpdateOrderItemVendorItemCommand.md) |  | 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchesUpdateStatus**
```swift
    open class func batchesUpdateStatus(id: Int64, statusCode: String, completion: @escaping (_ data: BatchDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int64 | 
let statusCode = "statusCode_example" // String | 

BatchesAPI.batchesUpdateStatus(id: id, statusCode: statusCode) { (response, error) in
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
 **statusCode** | **String** |  | 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

