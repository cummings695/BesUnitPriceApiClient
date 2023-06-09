//
// GetBatchListPagedQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetBatchListPagedQuery: Codable, JSONEncodable, Hashable {

    public var advancedSearch: BaseFilterAdvancedSearch?
    public var keyword: String?
    public var advancedFilter: BaseFilterAdvancedFilter?
    public var page: Int?
    public var pageSize: Int?
    public var orderBy: [String]?
    public var status: [Int]?

    public init(advancedSearch: BaseFilterAdvancedSearch? = nil, keyword: String? = nil, advancedFilter: BaseFilterAdvancedFilter? = nil, page: Int? = nil, pageSize: Int? = nil, orderBy: [String]? = nil, status: [Int]? = nil) {
        self.advancedSearch = advancedSearch
        self.keyword = keyword
        self.advancedFilter = advancedFilter
        self.page = page
        self.pageSize = pageSize
        self.orderBy = orderBy
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case advancedSearch
        case keyword
        case advancedFilter
        case page
        case pageSize
        case orderBy
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(advancedSearch, forKey: .advancedSearch)
        try container.encodeIfPresent(keyword, forKey: .keyword)
        try container.encodeIfPresent(advancedFilter, forKey: .advancedFilter)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(orderBy, forKey: .orderBy)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

