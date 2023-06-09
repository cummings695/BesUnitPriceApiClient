//
// InventoryItemDtoZone.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum InventoryItemDtoZone: Codable, JSONEncodable, Hashable {
    case typeZoneDto(ZoneDto)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeZoneDto(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ZoneDto.self) {
            self = .typeZoneDto(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of InventoryItemDtoZone"))
        }
    }
}

