//
// UserBaseViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class UserBaseViewModel: Codable, JSONEncodable, Hashable {

    static let userNameRule = StringRule(minLength: 2, maxLength: 200, pattern: nil)
    static let emailRule = StringRule(minLength: 0, maxLength: 200, pattern: nil)
    public var id: String?
    public var userName: String
    public var fullName: String?
    public var email: String
    public var jobTitle: String?
    public var phoneNumber: String?
    public var configuration: String?
    public var selectedRestaurant: Int?
    public var isEnabled: Bool?

    public init(id: String? = nil, userName: String, fullName: String? = nil, email: String, jobTitle: String? = nil, phoneNumber: String? = nil, configuration: String? = nil, selectedRestaurant: Int? = nil, isEnabled: Bool? = nil) {
        self.id = id
        self.userName = userName
        self.fullName = fullName
        self.email = email
        self.jobTitle = jobTitle
        self.phoneNumber = phoneNumber
        self.configuration = configuration
        self.selectedRestaurant = selectedRestaurant
        self.isEnabled = isEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userName
        case fullName
        case email
        case jobTitle
        case phoneNumber
        case configuration
        case selectedRestaurant
        case isEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(userName, forKey: .userName)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(configuration, forKey: .configuration)
        try container.encodeIfPresent(selectedRestaurant, forKey: .selectedRestaurant)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
    }

    public static func == (lhs: UserBaseViewModel, rhs: UserBaseViewModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.userName == rhs.userName &&
        lhs.fullName == rhs.fullName &&
        lhs.email == rhs.email &&
        lhs.jobTitle == rhs.jobTitle &&
        lhs.phoneNumber == rhs.phoneNumber &&
        lhs.configuration == rhs.configuration &&
        lhs.selectedRestaurant == rhs.selectedRestaurant &&
        lhs.isEnabled == rhs.isEnabled
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(userName.hashValue)
        hasher.combine(fullName?.hashValue)
        hasher.combine(email.hashValue)
        hasher.combine(jobTitle?.hashValue)
        hasher.combine(phoneNumber?.hashValue)
        hasher.combine(configuration?.hashValue)
        hasher.combine(selectedRestaurant?.hashValue)
        hasher.combine(isEnabled?.hashValue)
        
    }
}

