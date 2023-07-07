//
// PaginationResponseOfVendorDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaginationResponseOfVendorDto: Codable, JSONEncodable, Hashable {

    public var items: [VendorDto]?
    public var pageNumber: Int?
    public var totalPages: Int?
    public var totalCount: Int?
    public var pageSize: Int?
    public var hasPreviousPage: Bool?
    public var hasNextPage: Bool?

    public init(items: [VendorDto]? = nil, pageNumber: Int? = nil, totalPages: Int? = nil, totalCount: Int? = nil, pageSize: Int? = nil, hasPreviousPage: Bool? = nil, hasNextPage: Bool? = nil) {
        self.items = items
        self.pageNumber = pageNumber
        self.totalPages = totalPages
        self.totalCount = totalCount
        self.pageSize = pageSize
        self.hasPreviousPage = hasPreviousPage
        self.hasNextPage = hasNextPage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case pageNumber
        case totalPages
        case totalCount
        case pageSize
        case hasPreviousPage
        case hasNextPage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(pageNumber, forKey: .pageNumber)
        try container.encodeIfPresent(totalPages, forKey: .totalPages)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(hasPreviousPage, forKey: .hasPreviousPage)
        try container.encodeIfPresent(hasNextPage, forKey: .hasNextPage)
    }
}

