//
// ReCaptchaViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReCaptchaViewModel: Codable, JSONEncodable, Hashable {

    static let passKeyRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var passKey: String

    public init(passKey: String) {
        self.passKey = passKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case passKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(passKey, forKey: .passKey)
    }
}

