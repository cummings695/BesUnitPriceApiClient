//
// BaseZoneViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class BaseZoneViewModel: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var sortOrder: Int?
    public var shelvingUnits: [ShelvingUnitViewModel]?

    public init(name: String? = nil, sortOrder: Int? = nil, shelvingUnits: [ShelvingUnitViewModel]? = nil) {
        self.name = name
        self.sortOrder = sortOrder
        self.shelvingUnits = shelvingUnits
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case sortOrder
        case shelvingUnits
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(sortOrder, forKey: .sortOrder)
        try container.encodeIfPresent(shelvingUnits, forKey: .shelvingUnits)
    }

    public static func == (lhs: BaseZoneViewModel, rhs: BaseZoneViewModel) -> Bool {
        lhs.name == rhs.name &&
        lhs.sortOrder == rhs.sortOrder &&
        lhs.shelvingUnits == rhs.shelvingUnits
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name?.hashValue)
        hasher.combine(sortOrder?.hashValue)
        hasher.combine(shelvingUnits?.hashValue)
        
    }
}
