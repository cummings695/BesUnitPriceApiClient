//
// VendorSuggestionsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VendorSuggestionsViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int64?
    public var suggestions: [VendorAveragePriceViewModel]?

    public init(id: Int64? = nil, suggestions: [VendorAveragePriceViewModel]? = nil) {
        self.id = id
        self.suggestions = suggestions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case suggestions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(suggestions, forKey: .suggestions)
    }
}

