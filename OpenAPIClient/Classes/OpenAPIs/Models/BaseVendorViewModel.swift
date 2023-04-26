//
// BaseVendorViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class BaseVendorViewModel: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var contactName: String?
    public var addressLine1: String?
    public var addressLine2: String?
    public var city: String?
    public var state: String?
    public var zipCode: String?
    public var email: String?
    public var phone1: String?
    public var phone2: String?
    public var fax: String?
    public var cellPhone: String?
    public var notes: String?
    public var minimumOrder: Double?
    public var accountNumber: String?
    public var orderTotal: Double?
    public var incentivePercentage: Double?
    public var color: String?
    public var sortOrder: Int?
    public var active: Bool?
    public var website: String?
    public var contactEmail: String?
    public var geoCached: Bool?
    public var deliveryRange: Int?
    public var locations: [VendorLocationViewModel]?

    public init(name: String? = nil, contactName: String? = nil, addressLine1: String? = nil, addressLine2: String? = nil, city: String? = nil, state: String? = nil, zipCode: String? = nil, email: String? = nil, phone1: String? = nil, phone2: String? = nil, fax: String? = nil, cellPhone: String? = nil, notes: String? = nil, minimumOrder: Double? = nil, accountNumber: String? = nil, orderTotal: Double? = nil, incentivePercentage: Double? = nil, color: String? = nil, sortOrder: Int? = nil, active: Bool? = nil, website: String? = nil, contactEmail: String? = nil, geoCached: Bool? = nil, deliveryRange: Int? = nil, locations: [VendorLocationViewModel]? = nil) {
        self.name = name
        self.contactName = contactName
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.email = email
        self.phone1 = phone1
        self.phone2 = phone2
        self.fax = fax
        self.cellPhone = cellPhone
        self.notes = notes
        self.minimumOrder = minimumOrder
        self.accountNumber = accountNumber
        self.orderTotal = orderTotal
        self.incentivePercentage = incentivePercentage
        self.color = color
        self.sortOrder = sortOrder
        self.active = active
        self.website = website
        self.contactEmail = contactEmail
        self.geoCached = geoCached
        self.deliveryRange = deliveryRange
        self.locations = locations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case contactName
        case addressLine1
        case addressLine2
        case city
        case state
        case zipCode
        case email
        case phone1
        case phone2
        case fax
        case cellPhone
        case notes
        case minimumOrder
        case accountNumber
        case orderTotal
        case incentivePercentage
        case color
        case sortOrder
        case active
        case website
        case contactEmail
        case geoCached
        case deliveryRange
        case locations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(contactName, forKey: .contactName)
        try container.encodeIfPresent(addressLine1, forKey: .addressLine1)
        try container.encodeIfPresent(addressLine2, forKey: .addressLine2)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(zipCode, forKey: .zipCode)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(phone1, forKey: .phone1)
        try container.encodeIfPresent(phone2, forKey: .phone2)
        try container.encodeIfPresent(fax, forKey: .fax)
        try container.encodeIfPresent(cellPhone, forKey: .cellPhone)
        try container.encodeIfPresent(notes, forKey: .notes)
        try container.encodeIfPresent(minimumOrder, forKey: .minimumOrder)
        try container.encodeIfPresent(accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(orderTotal, forKey: .orderTotal)
        try container.encodeIfPresent(incentivePercentage, forKey: .incentivePercentage)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(sortOrder, forKey: .sortOrder)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(website, forKey: .website)
        try container.encodeIfPresent(contactEmail, forKey: .contactEmail)
        try container.encodeIfPresent(geoCached, forKey: .geoCached)
        try container.encodeIfPresent(deliveryRange, forKey: .deliveryRange)
        try container.encodeIfPresent(locations, forKey: .locations)
    }

    public static func == (lhs: BaseVendorViewModel, rhs: BaseVendorViewModel) -> Bool {
        lhs.name == rhs.name &&
        lhs.contactName == rhs.contactName &&
        lhs.addressLine1 == rhs.addressLine1 &&
        lhs.addressLine2 == rhs.addressLine2 &&
        lhs.city == rhs.city &&
        lhs.state == rhs.state &&
        lhs.zipCode == rhs.zipCode &&
        lhs.email == rhs.email &&
        lhs.phone1 == rhs.phone1 &&
        lhs.phone2 == rhs.phone2 &&
        lhs.fax == rhs.fax &&
        lhs.cellPhone == rhs.cellPhone &&
        lhs.notes == rhs.notes &&
        lhs.minimumOrder == rhs.minimumOrder &&
        lhs.accountNumber == rhs.accountNumber &&
        lhs.orderTotal == rhs.orderTotal &&
        lhs.incentivePercentage == rhs.incentivePercentage &&
        lhs.color == rhs.color &&
        lhs.sortOrder == rhs.sortOrder &&
        lhs.active == rhs.active &&
        lhs.website == rhs.website &&
        lhs.contactEmail == rhs.contactEmail &&
        lhs.geoCached == rhs.geoCached &&
        lhs.deliveryRange == rhs.deliveryRange &&
        lhs.locations == rhs.locations
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name?.hashValue)
        hasher.combine(contactName?.hashValue)
        hasher.combine(addressLine1?.hashValue)
        hasher.combine(addressLine2?.hashValue)
        hasher.combine(city?.hashValue)
        hasher.combine(state?.hashValue)
        hasher.combine(zipCode?.hashValue)
        hasher.combine(email?.hashValue)
        hasher.combine(phone1?.hashValue)
        hasher.combine(phone2?.hashValue)
        hasher.combine(fax?.hashValue)
        hasher.combine(cellPhone?.hashValue)
        hasher.combine(notes?.hashValue)
        hasher.combine(minimumOrder?.hashValue)
        hasher.combine(accountNumber?.hashValue)
        hasher.combine(orderTotal?.hashValue)
        hasher.combine(incentivePercentage?.hashValue)
        hasher.combine(color?.hashValue)
        hasher.combine(sortOrder?.hashValue)
        hasher.combine(active?.hashValue)
        hasher.combine(website?.hashValue)
        hasher.combine(contactEmail?.hashValue)
        hasher.combine(geoCached?.hashValue)
        hasher.combine(deliveryRange?.hashValue)
        hasher.combine(locations?.hashValue)
        
    }
}

