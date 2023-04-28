//
// OrderItemDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrderItemDto: Codable, JSONEncodable, Hashable {

    public var id: Int64?
    public var name: String?
    public var brand: String?
    public var unitPrice: Double?
    public var quantity: Int?
    public var receivedQuantity: Int?
    public var itemPrice: Double?
    public var receivedPrice: Double?
    public var receivedUnitPrice: Double?
    public var orderCode: String?
    public var totalPrice: Double?
    public var receivedTotal: Double?
    public var inventoryItemId: Int64?
    public var inventoryItem: OrderItemDtoInventoryItem?
    public var productPriceId: Int64?
    public var currentInventory: Int?
    public var orderId: Int64?
    public var createdBy: String?
    public var lastModifiedBy: String?
    public var createDate: Date?
    public var lastModifiedOn: Date?
    public var lostSavings: Double?
    public var received: Bool?

    public init(id: Int64? = nil, name: String? = nil, brand: String? = nil, unitPrice: Double? = nil, quantity: Int? = nil, receivedQuantity: Int? = nil, itemPrice: Double? = nil, receivedPrice: Double? = nil, receivedUnitPrice: Double? = nil, orderCode: String? = nil, totalPrice: Double? = nil, receivedTotal: Double? = nil, inventoryItemId: Int64? = nil, inventoryItem: OrderItemDtoInventoryItem? = nil, productPriceId: Int64? = nil, currentInventory: Int? = nil, orderId: Int64? = nil, createdBy: String? = nil, lastModifiedBy: String? = nil, createDate: Date? = nil, lastModifiedOn: Date? = nil, lostSavings: Double? = nil, received: Bool? = nil) {
        self.id = id
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
        self.inventoryItemId = inventoryItemId
        self.inventoryItem = inventoryItem
        self.productPriceId = productPriceId
        self.currentInventory = currentInventory
        self.orderId = orderId
        self.createdBy = createdBy
        self.lastModifiedBy = lastModifiedBy
        self.createDate = createDate
        self.lastModifiedOn = lastModifiedOn
        self.lostSavings = lostSavings
        self.received = received
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
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
        case inventoryItemId
        case inventoryItem
        case productPriceId
        case currentInventory
        case orderId
        case createdBy
        case lastModifiedBy
        case createDate
        case lastModifiedOn
        case lostSavings
        case received
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
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
        try container.encodeIfPresent(inventoryItemId, forKey: .inventoryItemId)
        try container.encodeIfPresent(inventoryItem, forKey: .inventoryItem)
        try container.encodeIfPresent(productPriceId, forKey: .productPriceId)
        try container.encodeIfPresent(currentInventory, forKey: .currentInventory)
        try container.encodeIfPresent(orderId, forKey: .orderId)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(lastModifiedBy, forKey: .lastModifiedBy)
        try container.encodeIfPresent(createDate, forKey: .createDate)
        try container.encodeIfPresent(lastModifiedOn, forKey: .lastModifiedOn)
        try container.encodeIfPresent(lostSavings, forKey: .lostSavings)
        try container.encodeIfPresent(received, forKey: .received)
    }
}
