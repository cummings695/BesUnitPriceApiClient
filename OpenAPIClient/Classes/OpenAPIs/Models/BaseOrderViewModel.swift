//
// BaseOrderViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BaseOrderViewModel: Codable, JSONEncodable, Hashable {

    public var createdDate: Date?
    public var totalPrice: Float?
    public var estimatedPrice: Float?
    public var items: [OrderItemViewModel]?
    public var itemsCount: Int?
    public var vendorId: Int64?
    public var vendor: VendorViewModel?
    public var active: Bool?
    public var statusId: Int64?
    public var status: OrderStatus?
    public var batchId: Int64?
    public var invoice: String?
    public var deliveryDate: Date?
    public var orderDate: Date?
    public var number: String?

    public init(createdDate: Date? = nil, totalPrice: Float? = nil, estimatedPrice: Float? = nil, items: [OrderItemViewModel]? = nil, itemsCount: Int? = nil, vendorId: Int64? = nil, vendor: VendorViewModel? = nil, active: Bool? = nil, statusId: Int64? = nil, status: OrderStatus? = nil, batchId: Int64? = nil, invoice: String? = nil, deliveryDate: Date? = nil, orderDate: Date? = nil, number: String? = nil) {
        self.createdDate = createdDate
        self.totalPrice = totalPrice
        self.estimatedPrice = estimatedPrice
        self.items = items
        self.itemsCount = itemsCount
        self.vendorId = vendorId
        self.vendor = vendor
        self.active = active
        self.statusId = statusId
        self.status = status
        self.batchId = batchId
        self.invoice = invoice
        self.deliveryDate = deliveryDate
        self.orderDate = orderDate
        self.number = number
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdDate
        case totalPrice
        case estimatedPrice
        case items
        case itemsCount
        case vendorId
        case vendor
        case active
        case statusId
        case status
        case batchId
        case invoice
        case deliveryDate
        case orderDate
        case number
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(totalPrice, forKey: .totalPrice)
        try container.encodeIfPresent(estimatedPrice, forKey: .estimatedPrice)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(itemsCount, forKey: .itemsCount)
        try container.encodeIfPresent(vendorId, forKey: .vendorId)
        try container.encodeIfPresent(vendor, forKey: .vendor)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(statusId, forKey: .statusId)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(batchId, forKey: .batchId)
        try container.encodeIfPresent(invoice, forKey: .invoice)
        try container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)
        try container.encodeIfPresent(orderDate, forKey: .orderDate)
        try container.encodeIfPresent(number, forKey: .number)
    }
}

