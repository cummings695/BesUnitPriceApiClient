//
// UpdateRestaurantCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateRestaurantCommand: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: 255, pattern: nil)
    public var id: Int64?
    public var name: String
    public var addressLine1: String?
    public var addressLine2: String?
    public var city: String?
    public var state: String?
    public var zipCode: String?

    public init(id: Int64? = nil, name: String, addressLine1: String? = nil, addressLine2: String? = nil, city: String? = nil, state: String? = nil, zipCode: String? = nil) {
        self.id = id
        self.name = name
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case addressLine1
        case addressLine2
        case city
        case state
        case zipCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(addressLine1, forKey: .addressLine1)
        try container.encodeIfPresent(addressLine2, forKey: .addressLine2)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(zipCode, forKey: .zipCode)
    }
}
