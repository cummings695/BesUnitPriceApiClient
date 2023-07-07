//
// InvitationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InvitationDto: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var restaurantId: Int64?
    public var restaurant: RestaurantDto?
    public var email: String?
    public var role: String?
    public var vendor: Int64?
    public var createdBy: String?
    public var lastModifiedBy: String?
    public var createdOn: Date?
    public var lastModifiedOn: Date?

    public init(id: String? = nil, restaurantId: Int64? = nil, restaurant: RestaurantDto? = nil, email: String? = nil, role: String? = nil, vendor: Int64? = nil, createdBy: String? = nil, lastModifiedBy: String? = nil, createdOn: Date? = nil, lastModifiedOn: Date? = nil) {
        self.id = id
        self.restaurantId = restaurantId
        self.restaurant = restaurant
        self.email = email
        self.role = role
        self.vendor = vendor
        self.createdBy = createdBy
        self.lastModifiedBy = lastModifiedBy
        self.createdOn = createdOn
        self.lastModifiedOn = lastModifiedOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case restaurantId
        case restaurant
        case email
        case role
        case vendor
        case createdBy
        case lastModifiedBy
        case createdOn
        case lastModifiedOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(restaurantId, forKey: .restaurantId)
        try container.encodeIfPresent(restaurant, forKey: .restaurant)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(vendor, forKey: .vendor)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(lastModifiedBy, forKey: .lastModifiedBy)
        try container.encodeIfPresent(createdOn, forKey: .createdOn)
        try container.encodeIfPresent(lastModifiedOn, forKey: .lastModifiedOn)
    }
}

