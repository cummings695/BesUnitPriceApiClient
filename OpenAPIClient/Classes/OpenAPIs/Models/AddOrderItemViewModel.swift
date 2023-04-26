//
// AddOrderItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class AddOrderItemViewModel: Codable, JSONEncodable, Hashable {

    public var inventoryItemId: Int64?
    public var quantity: Int?
    public var inventory: Int?

    public init(inventoryItemId: Int64? = nil, quantity: Int? = nil, inventory: Int? = nil) {
        self.inventoryItemId = inventoryItemId
        self.quantity = quantity
        self.inventory = inventory
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inventoryItemId
        case quantity
        case inventory
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inventoryItemId, forKey: .inventoryItemId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(inventory, forKey: .inventory)
    }

    public static func == (lhs: AddOrderItemViewModel, rhs: AddOrderItemViewModel) -> Bool {
        lhs.inventoryItemId == rhs.inventoryItemId &&
        lhs.quantity == rhs.quantity &&
        lhs.inventory == rhs.inventory
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(inventoryItemId?.hashValue)
        hasher.combine(quantity?.hashValue)
        hasher.combine(inventory?.hashValue)
        
    }
}

