//
// ProductViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class ProductViewModel: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var notes: String?
    public var prices: [ProductPriceViewModel]?
    public var defaultUnitOfMeasureId: Int64?
    public var defaultUnitOfMeasure: UnitViewModel?
    public var defaultQuantity: Float?
    public var defaultCount: Float?
    public var id: Int64?

    public init(name: String? = nil, notes: String? = nil, prices: [ProductPriceViewModel]? = nil, defaultUnitOfMeasureId: Int64? = nil, defaultUnitOfMeasure: UnitViewModel? = nil, defaultQuantity: Float? = nil, defaultCount: Float? = nil, id: Int64? = nil) {
        self.name = name
        self.notes = notes
        self.prices = prices
        self.defaultUnitOfMeasureId = defaultUnitOfMeasureId
        self.defaultUnitOfMeasure = defaultUnitOfMeasure
        self.defaultQuantity = defaultQuantity
        self.defaultCount = defaultCount
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case notes
        case prices
        case defaultUnitOfMeasureId
        case defaultUnitOfMeasure
        case defaultQuantity
        case defaultCount
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(notes, forKey: .notes)
        try container.encodeIfPresent(prices, forKey: .prices)
        try container.encodeIfPresent(defaultUnitOfMeasureId, forKey: .defaultUnitOfMeasureId)
        try container.encodeIfPresent(defaultUnitOfMeasure, forKey: .defaultUnitOfMeasure)
        try container.encodeIfPresent(defaultQuantity, forKey: .defaultQuantity)
        try container.encodeIfPresent(defaultCount, forKey: .defaultCount)
        try container.encodeIfPresent(id, forKey: .id)
    }

    public static func == (lhs: ProductViewModel, rhs: ProductViewModel) -> Bool {
        lhs.name == rhs.name &&
        lhs.notes == rhs.notes &&
        lhs.prices == rhs.prices &&
        lhs.defaultUnitOfMeasureId == rhs.defaultUnitOfMeasureId &&
        lhs.defaultUnitOfMeasure == rhs.defaultUnitOfMeasure &&
        lhs.defaultQuantity == rhs.defaultQuantity &&
        lhs.defaultCount == rhs.defaultCount &&
        lhs.id == rhs.id
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name?.hashValue)
        hasher.combine(notes?.hashValue)
        hasher.combine(prices?.hashValue)
        hasher.combine(defaultUnitOfMeasureId?.hashValue)
        hasher.combine(defaultUnitOfMeasure?.hashValue)
        hasher.combine(defaultQuantity?.hashValue)
        hasher.combine(defaultCount?.hashValue)
        hasher.combine(id?.hashValue)
        
    }
}

