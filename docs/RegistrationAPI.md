# RegistrationAPI

All URIs are relative to *https://db27h38l-5001.use.devtunnels.ms*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registrationConfirmRegistration**](RegistrationAPI.md#registrationconfirmregistration) | **POST** /api/registration/confirm | 
[**registrationForgotPassword**](RegistrationAPI.md#registrationforgotpassword) | **POST** /api/registration/forgotpassword | 
[**registrationRegister**](RegistrationAPI.md#registrationregister) | **POST** /api/registration | 
[**registrationResetPassword**](RegistrationAPI.md#registrationresetpassword) | **POST** /api/registration/resetpassword | 


# **registrationConfirmRegistration**
```swift
    open class func registrationConfirmRegistration(accountid: String? = nil, completion: @escaping (_ data: UserViewModel2?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String |  (optional)

RegistrationAPI.registrationConfirmRegistration(accountid: accountid) { (response, error) in
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
 **accountid** | **String** |  | [optional] 

### Return type

[**UserViewModel2**](UserViewModel2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registrationForgotPassword**
```swift
    open class func registrationForgotPassword(forgotPasswordPost: ForgotPasswordPost, completion: @escaping (_ data: UserViewModel2?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let forgotPasswordPost = ForgotPasswordPost(passKey: "passKey_example", email: "email_example") // ForgotPasswordPost | 

RegistrationAPI.registrationForgotPassword(forgotPasswordPost: forgotPasswordPost) { (response, error) in
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
 **forgotPasswordPost** | [**ForgotPasswordPost**](ForgotPasswordPost.md) |  | 

### Return type

[**UserViewModel2**](UserViewModel2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registrationRegister**
```swift
    open class func registrationRegister(registerViewModel: RegisterViewModel, completion: @escaping (_ data: UserViewModel2?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let registerViewModel = RegisterViewModel(passKey: "passKey_example", user: UserPostViewModel(firstName: "firstName_example", lastName: "lastName_example", email: "email_example", password: "password_example", roles: ["roles_example"]), restaurant: RestaurantPostViewModel(name: "name_example", addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", city: "city_example", state: "state_example", zipCode: "zipCode_example", geoCached: false, templateRestaurantId: 123, template: RestaurantPostViewModel_allOf_template(restaurantId: 123, includeInventoryItems: false, includeZones: false, includeVendorOverrides: false, includeUnitOverrides: false)), billing: BillingPostViewModel(nameOnCard: "nameOnCard_example", cardNumber: "cardNumber_example", expirationDate: "expirationDate_example", cCv: "cCv_example")) // RegisterViewModel | 

RegistrationAPI.registrationRegister(registerViewModel: registerViewModel) { (response, error) in
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
 **registerViewModel** | [**RegisterViewModel**](RegisterViewModel.md) |  | 

### Return type

[**UserViewModel2**](UserViewModel2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registrationResetPassword**
```swift
    open class func registrationResetPassword(resetPasswordPost: ResetPasswordPost, completion: @escaping (_ data: UserViewModel2?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let resetPasswordPost = ResetPasswordPost(passKey: "passKey_example", email: "email_example", password: "password_example", token: "token_example") // ResetPasswordPost | 

RegistrationAPI.registrationResetPassword(resetPasswordPost: resetPasswordPost) { (response, error) in
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
 **resetPasswordPost** | [**ResetPasswordPost**](ResetPasswordPost.md) |  | 

### Return type

[**UserViewModel2**](UserViewModel2.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

