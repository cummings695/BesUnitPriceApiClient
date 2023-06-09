//
// BaseOrderItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BaseOrderItemViewModel: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var brand: String?
    public var unitPrice: Float?
    public var quantity: Int?
    public var receivedQuantity: Int?
    public var itemPrice: Float?
    public var receivedPrice: Float?
    public var receivedUnitPrice: Float?
    public var orderCode: String?
    public var totalPrice: Float?
    public var receivedTotal: Float?
    public var productId: Int64?
    public var product: ProductViewModel?
    public var inventoryItemId: Int64?
    public var inventoryItem: InventoryItemViewModel?
    public var productPriceId: Int64?
    public var currentInventory: Int?
    public var orderId: Int64?
    public var createdBy: String?
    public var lastModifiedBy: String?
    public var createDate: Date?
    public var lastModifiedOn: Date?
    public var previousVendors: [VendorViewModel]?
    public var lostSavings: Double?
    public var received: Bool?

    public init(name: String? = nil, brand: String? = nil, unitPrice: Float? = nil, quantity: Int? = nil, receivedQuantity: Int? = nil, itemPrice: Float? = nil, receivedPrice: Float? = nil, receivedUnitPrice: Float? = nil, orderCode: String? = nil, totalPrice: Float? = nil, receivedTotal: Float? = nil, productId: Int64? = nil, product: ProductViewModel? = nil, inventoryItemId: Int64? = nil, inventoryItem: InventoryItemViewModel? = nil, productPriceId: Int64? = nil, currentInventory: Int? = nil, orderId: Int64? = nil, createdBy: String? = nil, lastModifiedBy: String? = nil, createDate: Date? = nil, lastModifiedOn: Date? = nil, previousVendors: [VendorViewModel]? = nil, lostSavings: Double? = nil, received: Bool? = nil) {
        self.name = name
        self.brand = brand
        self.unitPrice = unitPrice
        self.quantity = quantity
        self.receivedQuantity = receivedQuantity
        self.itemPrice = itemPrice
        self.receivedPrice = receivedPrice
        self.receivedUnitPrice = receivedUnitPrice
        self.orderCode = orderCode
        self.totalPrice = totalPrice
        self.receivedTotal = receivedTotal
        self.productId = productId
        self.product = product
        self.inventoryItemId = inventoryItemId
        self.inventoryItem = inventoryItem
        self.productPriceId = productPriceId
        self.currentInventory = currentInventory
        self.orderId = orderId
        self.createdBy = createdBy
        self.lastModifiedBy = lastModifiedBy
        self.createDate = createDate
        self.lastModifiedOn = lastModifiedOn
        self.previousVendors = previousVendors
        self.lostSavings = lostSavings
        self.received = received
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case brand
        case unitPrice
        case quantity
        case receivedQuantity
        case itemPrice
        case receivedPrice
        case receivedUnitPrice
        case orderCode
        case totalPrice
        case receivedTotal
        case productId
        case product
        case inventoryItemId
        case inventoryItem
        case productPriceId
        case currentInventory
        case orderId
        case createdBy
        case lastModifiedBy
        case createDate
        case lastModifiedOn
        case previousVendors
        case lostSavings
        case received
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(brand, forKey: .brand)
        try container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(receivedQuantity, forKey: .receivedQuantity)
        try container.encodeIfPresent(itemPrice, forKey: .itemPrice)
        try container.encodeIfPresent(receivedPrice, forKey: .receivedPrice)
        try container.encodeIfPresent(receivedUnitPrice, forKey: .receivedUnitPrice)
        try container.encodeIfPresent(orderCode, forKey: .orderCode)
        try container.encodeIfPresent(totalPrice, forKey: .totalPrice)
        try container.encodeIfPresent(receivedTotal, forKey: .receivedTotal)
        try container.encodeIfPresent(productId, forKey: .productId)
        try container.encodeIfPresent(product, forKey: .product)
        try container.encodeIfPresent(inventoryItemId, forKey: .inventoryItemId)
        try container.encodeIfPresent(inventoryItem, forKey: .inventoryItem)
        try container.encodeIfPresent(productPriceId, forKey: .productPriceId)
        try container.encodeIfPresent(currentInventory, forKey: .currentInventory)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(lastModifiedBy, forKey: .lastModifiedBy)
        try container.encodeIfPresent(createDate, forKey: .createDate)
        try container.encodeIfPresent(lastModifiedOn, forKey: .lastModifiedOn)
        try container.encodeIfPresent(previousVendors, forKey: .previousVendors)
        try container.encodeIfPresent(lostSavings, forKey: .lostSavings)
        try container.encodeIfPresent(received, forKey: .received)
    }
}

