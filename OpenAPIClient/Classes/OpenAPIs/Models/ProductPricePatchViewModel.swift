//
// ProductPricePatchViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class ProductPricePatchViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int64?
    public var vendorId: Int64?
    public var orderCode: String?

    public init(id: Int64? = nil, vendorId: Int64? = nil, orderCode: String? = nil) {
        self.id = id
        self.vendorId = vendorId
        self.orderCode = orderCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case vendorId
        case orderCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(vendorId, forKey: .vendorId)
        try container.encodeIfPresent(orderCode, forKey: .orderCode)
    }

    public static func == (lhs: ProductPricePatchViewModel, rhs: ProductPricePatchViewModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.vendorId == rhs.vendorId &&
        lhs.orderCode == rhs.orderCode
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(vendorId?.hashValue)
        hasher.combine(orderCode?.hashValue)
        
    }
}
