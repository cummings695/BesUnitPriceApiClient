//
// UserDetailsDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserDetailsDto: Codable, JSONEncodable, Hashable {

    public var friendlyName: String?
    public var fullName: String?
    public var id: String?
    public var userName: String?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var isEnabled: Bool?
    public var emailConfirmed: Bool?
    public var phoneNumber: String?
    public var createdDate: Date?
    public var merchantGatewayId: String?
    public var monthlyPrice: Double?
    public var normalizedUserName: String?
    public var normalizedEmail: String?
    public var configuration: String?
    public var lockoutEnd: Date?
    public var selectedRestaurantId: Int64?

    public init(friendlyName: String? = nil, fullName: String? = nil, id: String? = nil, userName: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, isEnabled: Bool? = nil, emailConfirmed: Bool? = nil, phoneNumber: String? = nil, createdDate: Date? = nil, merchantGatewayId: String? = nil, monthlyPrice: Double? = nil, normalizedUserName: String? = nil, normalizedEmail: String? = nil, configuration: String? = nil, lockoutEnd: Date? = nil, selectedRestaurantId: Int64? = nil) {
        self.friendlyName = friendlyName
        self.fullName = fullName
        self.id = id
        self.userName = userName
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.isEnabled = isEnabled
        self.emailConfirmed = emailConfirmed
        self.phoneNumber = phoneNumber
        self.createdDate = createdDate
        self.merchantGatewayId = merchantGatewayId
        self.monthlyPrice = monthlyPrice
        self.normalizedUserName = normalizedUserName
        self.normalizedEmail = normalizedEmail
        self.configuration = configuration
        self.lockoutEnd = lockoutEnd
        self.selectedRestaurantId = selectedRestaurantId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case friendlyName
        case fullName
        case id
        case userName
        case firstName
        case lastName
        case email
        case isEnabled
        case emailConfirmed
        case phoneNumber
        case createdDate
        case merchantGatewayId
        case monthlyPrice
        case normalizedUserName
        case normalizedEmail
        case configuration
        case lockoutEnd
        case selectedRestaurantId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(friendlyName, forKey: .friendlyName)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(emailConfirmed, forKey: .emailConfirmed)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(merchantGatewayId, forKey: .merchantGatewayId)
        try container.encodeIfPresent(monthlyPrice, forKey: .monthlyPrice)
        try container.encodeIfPresent(normalizedUserName, forKey: .normalizedUserName)
        try container.encodeIfPresent(normalizedEmail, forKey: .normalizedEmail)
        try container.encodeIfPresent(configuration, forKey: .configuration)
        try container.encodeIfPresent(lockoutEnd, forKey: .lockoutEnd)
        try container.encodeIfPresent(selectedRestaurantId, forKey: .selectedRestaurantId)
    }
}

