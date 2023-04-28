//
// CreateInventoryItemVendorPriceCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateInventoryItemVendorPriceCommand: Codable, JSONEncodable, Hashable {

    public var inventoryItemId: Int64?
    public var vendorId: Int64?
    public var quantity: Double?
    public var count: Double?
    public var packPrice: Double?
    public var itemNumber: String?
    public var brand: String?
    public var vendorDescription: String?

    public init(inventoryItemId: Int64? = nil, vendorId: Int64? = nil, quantity: Double? = nil, count: Double? = nil, packPrice: Double? = nil, itemNumber: String? = nil, brand: String? = nil, vendorDescription: String? = nil) {
        self.inventoryItemId = inventoryItemId
        self.vendorId = vendorId
        self.quantity = quantity
        self.count = count
        self.packPrice = packPrice
        self.itemNumber = itemNumber
        self.brand = brand
        self.vendorDescription = vendorDescription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inventoryItemId
        case vendorId
        case quantity
        case count
        case packPrice
        case itemNumber
        case brand
        case vendorDescription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inventoryItemId, forKey: .inventoryItemId)
        try container.encodeIfPresent(vendorId, forKey: .vendorId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(packPrice, forKey: .packPrice)
        try container.encodeIfPresent(itemNumber, forKey: .itemNumber)
        try container.encodeIfPresent(brand, forKey: .brand)
        try container.encodeIfPresent(vendorDescription, forKey: .vendorDescription)
    }
}
