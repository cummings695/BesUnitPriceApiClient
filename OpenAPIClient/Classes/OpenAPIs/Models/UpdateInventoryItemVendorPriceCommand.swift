//
// UpdateInventoryItemVendorPriceCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateInventoryItemVendorPriceCommand: Codable, JSONEncodable, Hashable {

    public var productPriceId: Int64?
    public var inventoryItemId: Int64?
    public var vendorId: Int64?
    public var deleted: Bool?
    public var productInfoId: Int64?
    public var productInfoOrderCode: String?
    public var productInfoBrand: String?
    public var productInfoQuantity: Double?
    public var productInfoDescription: String?
    public var productInfoVendorDescription: String?
    public var productInfoCount: Double?
    public var productInfoUnitOfMeasureId: Int64?
    public var productInfoDeselected: Bool?
    public var productInfoPrice: Double?
    public var productInfoUnitPrice: Double?
    public var productInfoIsPreferred: Bool?
    public var productInfoManufacturerCode: String?

    public init(productPriceId: Int64? = nil, inventoryItemId: Int64? = nil, vendorId: Int64? = nil, deleted: Bool? = nil, productInfoId: Int64? = nil, productInfoOrderCode: String? = nil, productInfoBrand: String? = nil, productInfoQuantity: Double? = nil, productInfoDescription: String? = nil, productInfoVendorDescription: String? = nil, productInfoCount: Double? = nil, productInfoUnitOfMeasureId: Int64? = nil, productInfoDeselected: Bool? = nil, productInfoPrice: Double? = nil, productInfoUnitPrice: Double? = nil, productInfoIsPreferred: Bool? = nil, productInfoManufacturerCode: String? = nil) {
        self.productPriceId = productPriceId
        self.inventoryItemId = inventoryItemId
        self.vendorId = vendorId
        self.deleted = deleted
        self.productInfoId = productInfoId
        self.productInfoOrderCode = productInfoOrderCode
        self.productInfoBrand = productInfoBrand
        self.productInfoQuantity = productInfoQuantity
        self.productInfoDescription = productInfoDescription
        self.productInfoVendorDescription = productInfoVendorDescription
        self.productInfoCount = productInfoCount
        self.productInfoUnitOfMeasureId = productInfoUnitOfMeasureId
        self.productInfoDeselected = productInfoDeselected
        self.productInfoPrice = productInfoPrice
        self.productInfoUnitPrice = productInfoUnitPrice
        self.productInfoIsPreferred = productInfoIsPreferred
        self.productInfoManufacturerCode = productInfoManufacturerCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productPriceId
        case inventoryItemId
        case vendorId
        case deleted
        case productInfoId
        case productInfoOrderCode
        case productInfoBrand
        case productInfoQuantity
        case productInfoDescription
        case productInfoVendorDescription
        case productInfoCount
        case productInfoUnitOfMeasureId
        case productInfoDeselected
        case productInfoPrice
        case productInfoUnitPrice
        case productInfoIsPreferred
        case productInfoManufacturerCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(productPriceId, forKey: .productPriceId)
        try container.encodeIfPresent(inventoryItemId, forKey: .inventoryItemId)
        try container.encodeIfPresent(vendorId, forKey: .vendorId)
        try container.encodeIfPresent(deleted, forKey: .deleted)
        try container.encodeIfPresent(productInfoId, forKey: .productInfoId)
        try container.encodeIfPresent(productInfoOrderCode, forKey: .productInfoOrderCode)
        try container.encodeIfPresent(productInfoBrand, forKey: .productInfoBrand)
        try container.encodeIfPresent(productInfoQuantity, forKey: .productInfoQuantity)
        try container.encodeIfPresent(productInfoDescription, forKey: .productInfoDescription)
        try container.encodeIfPresent(productInfoVendorDescription, forKey: .productInfoVendorDescription)
        try container.encodeIfPresent(productInfoCount, forKey: .productInfoCount)
        try container.encodeIfPresent(productInfoUnitOfMeasureId, forKey: .productInfoUnitOfMeasureId)
        try container.encodeIfPresent(productInfoDeselected, forKey: .productInfoDeselected)
        try container.encodeIfPresent(productInfoPrice, forKey: .productInfoPrice)
        try container.encodeIfPresent(productInfoUnitPrice, forKey: .productInfoUnitPrice)
        try container.encodeIfPresent(productInfoIsPreferred, forKey: .productInfoIsPreferred)
        try container.encodeIfPresent(productInfoManufacturerCode, forKey: .productInfoManufacturerCode)
    }
}

