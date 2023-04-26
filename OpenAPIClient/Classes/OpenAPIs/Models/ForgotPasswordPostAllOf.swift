//
// ForgotPasswordPostAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class ForgotPasswordPostAllOf: Codable, JSONEncodable, Hashable {

    static let emailRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var email: String

    public init(email: String) {
        self.email = email
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
    }

    public static func == (lhs: ForgotPasswordPostAllOf, rhs: ForgotPasswordPostAllOf) -> Bool {
        lhs.email == rhs.email
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(email.hashValue)
        
    }
}
