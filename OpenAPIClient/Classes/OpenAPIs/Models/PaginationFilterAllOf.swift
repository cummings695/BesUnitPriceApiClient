//
// PaginationFilterAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaginationFilterAllOf: Codable, JSONEncodable, Hashable {

    public var page: Int?
    public var pageSize: Int?
    public var orderBy: [String]?

    public init(page: Int? = nil, pageSize: Int? = nil, orderBy: [String]? = nil) {
        self.page = page
        self.pageSize = pageSize
        self.orderBy = orderBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case page
        case pageSize
        case orderBy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(orderBy, forKey: .orderBy)
    }
}

