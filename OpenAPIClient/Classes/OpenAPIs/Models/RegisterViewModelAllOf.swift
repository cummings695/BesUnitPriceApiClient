//
// RegisterViewModelAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RegisterViewModelAllOf: Codable, JSONEncodable, Hashable {

    public var user: UserPostViewModel?
    public var restaurant: RestaurantPostViewModel?
    public var billing: BillingPostViewModel?

    public init(user: UserPostViewModel? = nil, restaurant: RestaurantPostViewModel? = nil, billing: BillingPostViewModel? = nil) {
        self.user = user
        self.restaurant = restaurant
        self.billing = billing
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case restaurant
        case billing
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(restaurant, forKey: .restaurant)
        try container.encodeIfPresent(billing, forKey: .billing)
    }
}

