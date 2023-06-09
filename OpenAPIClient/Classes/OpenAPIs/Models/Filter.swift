//
// Filter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Filter: Codable, JSONEncodable, Hashable {

    public var logic: String?
    public var filters: [Filter]?
    public var field: String?
    public var _operator: String?
    public var value: AnyCodable?

    public init(logic: String? = nil, filters: [Filter]? = nil, field: String? = nil, _operator: String? = nil, value: AnyCodable? = nil) {
        self.logic = logic
        self.filters = filters
        self.field = field
        self._operator = _operator
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case logic
        case filters
        case field
        case _operator = "operator"
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(logic, forKey: .logic)
        try container.encodeIfPresent(filters, forKey: .filters)
        try container.encodeIfPresent(field, forKey: .field)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

