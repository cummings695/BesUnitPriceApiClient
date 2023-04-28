# TokensAPI

All URIs are relative to *https://bestunitprice-dev.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokensGetToken**](TokensAPI.md#tokensgettoken) | **POST** /api/tokens | Request an access token using credentials.
[**tokensRefresh**](TokensAPI.md#tokensrefresh) | **POST** /api/tokens/refresh | Request an access token using a refresh token.


# **tokensGetToken**
```swift
    open class func tokensGetToken(tokenRequest: TokenRequest, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

Request an access token using credentials.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let tokenRequest = TokenRequest(username: "username_example", password: "password_example") // TokenRequest | 

// Request an access token using credentials.
TokensAPI.tokensGetToken(tokenRequest: tokenRequest) { (response, error) in
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
 **tokenRequest** | [**TokenRequest**](TokenRequest.md) |  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensRefresh**
```swift
    open class func tokensRefresh(refreshTokenRequest: RefreshTokenRequest, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

Request an access token using a refresh token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BestUnitPriceApiClient

let refreshTokenRequest = RefreshTokenRequest(token: "token_example", refreshToken: "refreshToken_example") // RefreshTokenRequest | 

// Request an access token using a refresh token.
TokensAPI.tokensRefresh(refreshTokenRequest: refreshTokenRequest) { (response, error) in
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
 **refreshTokenRequest** | [**RefreshTokenRequest**](RefreshTokenRequest.md) |  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

