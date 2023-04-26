//
// RegistrationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class RegistrationAPI {

    /**

     - parameter accountid: (query)  (optional)
     - returns: AnyPublisher<UserViewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func registrationConfirmRegistration(accountid: String? = nil) -> AnyPublisher<UserViewModel, Error> {
        let requestBuilder = registrationConfirmRegistrationWithRequestBuilder(accountid: accountid)
        let requestTask = requestBuilder.requestTask
        return Future<UserViewModel, Error> { promise in
            requestBuilder.execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     - POST /api/registration/confirm
     - parameter accountid: (query)  (optional)
     - returns: RequestBuilder<UserViewModel> 
     */
    open class func registrationConfirmRegistrationWithRequestBuilder(accountid: String? = nil) -> RequestBuilder<UserViewModel> {
        let localVariablePath = "/api/registration/confirm"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "accountid": (wrappedValue: accountid?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter forgotPasswordPost: (body)  
     - returns: AnyPublisher<UserViewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func registrationForgotPassword(forgotPasswordPost: ForgotPasswordPost) -> AnyPublisher<UserViewModel, Error> {
        let requestBuilder = registrationForgotPasswordWithRequestBuilder(forgotPasswordPost: forgotPasswordPost)
        let requestTask = requestBuilder.requestTask
        return Future<UserViewModel, Error> { promise in
            requestBuilder.execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     - POST /api/registration/forgotpassword
     - parameter forgotPasswordPost: (body)  
     - returns: RequestBuilder<UserViewModel> 
     */
    open class func registrationForgotPasswordWithRequestBuilder(forgotPasswordPost: ForgotPasswordPost) -> RequestBuilder<UserViewModel> {
        let localVariablePath = "/api/registration/forgotpassword"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: forgotPasswordPost)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter registerViewModel: (body)  
     - returns: AnyPublisher<UserViewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func registrationRegister(registerViewModel: RegisterViewModel) -> AnyPublisher<UserViewModel, Error> {
        let requestBuilder = registrationRegisterWithRequestBuilder(registerViewModel: registerViewModel)
        let requestTask = requestBuilder.requestTask
        return Future<UserViewModel, Error> { promise in
            requestBuilder.execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     - POST /api/registration
     - parameter registerViewModel: (body)  
     - returns: RequestBuilder<UserViewModel> 
     */
    open class func registrationRegisterWithRequestBuilder(registerViewModel: RegisterViewModel) -> RequestBuilder<UserViewModel> {
        let localVariablePath = "/api/registration"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: registerViewModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter resetPasswordPost: (body)  
     - returns: AnyPublisher<UserViewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func registrationResetPassword(resetPasswordPost: ResetPasswordPost) -> AnyPublisher<UserViewModel, Error> {
        let requestBuilder = registrationResetPasswordWithRequestBuilder(resetPasswordPost: resetPasswordPost)
        let requestTask = requestBuilder.requestTask
        return Future<UserViewModel, Error> { promise in
            requestBuilder.execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     - POST /api/registration/resetpassword
     - BASIC:
       - type: http
       - name: Bearer
     - parameter resetPasswordPost: (body)  
     - returns: RequestBuilder<UserViewModel> 
     */
    open class func registrationResetPasswordWithRequestBuilder(resetPasswordPost: ResetPasswordPost) -> RequestBuilder<UserViewModel> {
        let localVariablePath = "/api/registration/resetpassword"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: resetPasswordPost)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
