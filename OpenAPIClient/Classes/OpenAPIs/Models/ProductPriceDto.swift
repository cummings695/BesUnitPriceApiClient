//
// ProductPriceDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductPriceDto: Codable, JSONEncodable, Hashable {

    public var id: Int64?
    public var comparison: Double?
    public var vendorId: Int64?
    public var vendor: OrderDtoVendor?
    public var productInfoId: Int64?
    public var productInfo: ProductInfoDto?
    public var deleted: Bool?
    public var vendorDeleted: Bool?

    public init(id: Int64? = nil, comparison: Double? = nil, vendorId: Int64? = nil, vendor: OrderDtoVendor? = nil, productInfoId: Int64? = nil, productInfo: ProductInfoDto? = nil, deleted: Bool? = nil, vendorDeleted: Bool? = nil) {
        self.id = id
        self.comparison = comparison
        self.vendorId = vendorId
        self.vendor = vendor
        self.productInfoId = productInfoId
        self.productInfo = productInfo
        self.deleted = deleted
        self.vendorDeleted = vendorDeleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case comparison
        case vendorId
        case vendor
        case productInfoId
        case productInfo
        case deleted
        case vendorDeleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(comparison, forKey: .comparison)
        try container.encodeIfPresent(vendorId, forKey: .vendorId)
        try container.encodeIfPresent(vendor, forKey: .vendor)
        try container.encodeIfPresent(productInfoId, forKey: .productInfoId)
        try container.encodeIfPresent(productInfo, forKey: .productInfo)
        try container.encodeIfPresent(deleted, forKey: .deleted)
        try container.encodeIfPresent(vendorDeleted, forKey: .vendorDeleted)
    }
}

