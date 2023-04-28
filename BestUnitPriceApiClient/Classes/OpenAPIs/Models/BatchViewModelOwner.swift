//
// BatchViewModelOwner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum BatchViewModelOwner: Codable, JSONEncodable, Hashable {
    case typeRestaurantViewModel(RestaurantViewModel)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeRestaurantViewModel(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(RestaurantViewModel.self) {
            self = .typeRestaurantViewModel(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of BatchViewModelOwner"))
        }
    }
}
