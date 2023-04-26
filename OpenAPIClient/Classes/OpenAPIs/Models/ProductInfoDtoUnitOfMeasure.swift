//
// ProductInfoDtoUnitOfMeasure.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ProductInfoDtoUnitOfMeasure: Codable, JSONEncodable, Hashable {
    case typeUnitDto(UnitDto)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeUnitDto(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(UnitDto.self) {
            self = .typeUnitDto(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ProductInfoDtoUnitOfMeasure"))
        }
    }
}

