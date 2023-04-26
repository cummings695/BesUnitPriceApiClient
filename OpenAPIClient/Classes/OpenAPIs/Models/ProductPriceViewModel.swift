//
// ProductPriceViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class ProductPriceViewModel: Codable, JSONEncodable, Hashable {

    public var comparison: Double?
    public var vendorId: Int64?
    public var vendor: VendorViewModel?
    public var productInfoId: Int64?
    public var productInfo: ProductInfoViewModel?
    public var deleted: Bool?
    public var vendorDeleted: Bool?
    public var id: Int64?

    public init(comparison: Double? = nil, vendorId: Int64? = nil, vendor: VendorViewModel? = nil, productInfoId: Int64? = nil, productInfo: ProductInfoViewModel? = nil, deleted: Bool? = nil, vendorDeleted: Bool? = nil, id: Int64? = nil) {
        self.comparison = comparison
        self.vendorId = vendorId
        self.vendor = vendor
        self.productInfoId = productInfoId
        self.productInfo = productInfo
        self.deleted = deleted
        self.vendorDeleted = vendorDeleted
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case comparison
        case vendorId
        case vendor
        case productInfoId
        case productInfo
        case deleted
        case vendorDeleted
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(comparison, forKey: .comparison)
        try container.encodeIfPresent(vendorId, forKey: .vendorId)
        try container.encodeIfPresent(vendor, forKey: .vendor)
        try container.encodeIfPresent(productInfoId, forKey: .productInfoId)
        try container.encodeIfPresent(productInfo, forKey: .productInfo)
        try container.encodeIfPresent(deleted, forKey: .deleted)
        try container.encodeIfPresent(vendorDeleted, forKey: .vendorDeleted)
        try container.encodeIfPresent(id, forKey: .id)
    }

    public static func == (lhs: ProductPriceViewModel, rhs: ProductPriceViewModel) -> Bool {
        lhs.comparison == rhs.comparison &&
        lhs.vendorId == rhs.vendorId &&
        lhs.vendor == rhs.vendor &&
        lhs.productInfoId == rhs.productInfoId &&
        lhs.productInfo == rhs.productInfo &&
        lhs.deleted == rhs.deleted &&
        lhs.vendorDeleted == rhs.vendorDeleted &&
        lhs.id == rhs.id
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(comparison?.hashValue)
        hasher.combine(vendorId?.hashValue)
        hasher.combine(vendor?.hashValue)
        hasher.combine(productInfoId?.hashValue)
        hasher.combine(productInfo?.hashValue)
        hasher.combine(deleted?.hashValue)
        hasher.combine(vendorDeleted?.hashValue)
        hasher.combine(id?.hashValue)
        
    }
}
