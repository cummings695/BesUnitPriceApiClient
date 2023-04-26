//
// BaseProductInfoViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class BaseProductInfoViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int64?

    public init(id: Int64? = nil) {
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
    }

    public static func == (lhs: BaseProductInfoViewModel, rhs: BaseProductInfoViewModel) -> Bool {
        lhs.id == rhs.id
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        
    }
}
