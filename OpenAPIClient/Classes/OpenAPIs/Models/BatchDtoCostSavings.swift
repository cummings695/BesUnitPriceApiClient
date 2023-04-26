//
// BatchDtoCostSavings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum BatchDtoCostSavings: Codable, JSONEncodable, Hashable {
    case typeCostSavingsDto(CostSavingsDto)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeCostSavingsDto(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CostSavingsDto.self) {
            self = .typeCostSavingsDto(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of BatchDtoCostSavings"))
        }
    }
}

