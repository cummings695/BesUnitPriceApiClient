//
// GetInventoryItemsQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class GetInventoryItemsQuery: Codable, JSONEncodable, Hashable {

    public var zoneId: Int64?
    public var name: String?
    public var orderCode: String?
    public var restaurantId: Int64?
    public var hydrationLevel: Int?
    public var active: Bool?
    public var page: Int?
    public var pageSize: Int?
    public var sort: String?

    public init(zoneId: Int64? = nil, name: String? = nil, orderCode: String? = nil, restaurantId: Int64? = nil, hydrationLevel: Int? = nil, active: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, sort: String? = nil) {
        self.zoneId = zoneId
        self.name = name
        self.orderCode = orderCode
        self.restaurantId = restaurantId
        self.hydrationLevel = hydrationLevel
        self.active = active
        self.page = page
        self.pageSize = pageSize
        self.sort = sort
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case zoneId
        case name
        case orderCode
        case restaurantId
        case hydrationLevel
        case active
        case page
        case pageSize
        case sort
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(zoneId, forKey: .zoneId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(orderCode, forKey: .orderCode)
        try container.encodeIfPresent(restaurantId, forKey: .restaurantId)
        try container.encodeIfPresent(hydrationLevel, forKey: .hydrationLevel)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(sort, forKey: .sort)
    }

    public static func == (lhs: GetInventoryItemsQuery, rhs: GetInventoryItemsQuery) -> Bool {
        lhs.zoneId == rhs.zoneId &&
        lhs.name == rhs.name &&
        lhs.orderCode == rhs.orderCode &&
        lhs.restaurantId == rhs.restaurantId &&
        lhs.hydrationLevel == rhs.hydrationLevel &&
        lhs.active == rhs.active &&
        lhs.page == rhs.page &&
        lhs.pageSize == rhs.pageSize &&
        lhs.sort == rhs.sort
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(zoneId?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(orderCode?.hashValue)
        hasher.combine(restaurantId?.hashValue)
        hasher.combine(hydrationLevel?.hashValue)
        hasher.combine(active?.hashValue)
        hasher.combine(page?.hashValue)
        hasher.combine(pageSize?.hashValue)
        hasher.combine(sort?.hashValue)
        
    }
}

