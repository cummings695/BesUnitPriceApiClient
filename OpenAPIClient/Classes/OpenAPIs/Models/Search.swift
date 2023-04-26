//
// Search.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class Search: Codable, JSONEncodable, Hashable {

    public var fields: [String]?
    public var keyword: String?

    public init(fields: [String]? = nil, keyword: String? = nil) {
        self.fields = fields
        self.keyword = keyword
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fields
        case keyword
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fields, forKey: .fields)
        try container.encodeIfPresent(keyword, forKey: .keyword)
    }

    public static func == (lhs: Search, rhs: Search) -> Bool {
        lhs.fields == rhs.fields &&
        lhs.keyword == rhs.keyword
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(fields?.hashValue)
        hasher.combine(keyword?.hashValue)
        
    }
}

