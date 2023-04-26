//
// BaseVendorLocationViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class BaseVendorLocationViewModel: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var contactName: String?
    public var website: String?
    public var addressLine1: String?
    public var addressLine2: String?
    public var city: String?
    public var state: String?
    public var zipCode: String?
    public var latitude: Double?
    public var longitude: Double?
    public var deliveryRange: Int?
    public var active: Bool?
    public var isGeoCoded: Bool?

    public init(name: String? = nil, contactName: String? = nil, website: String? = nil, addressLine1: String? = nil, addressLine2: String? = nil, city: String? = nil, state: String? = nil, zipCode: String? = nil, latitude: Double? = nil, longitude: Double? = nil, deliveryRange: Int? = nil, active: Bool? = nil, isGeoCoded: Bool? = nil) {
        self.name = name
        self.contactName = contactName
        self.website = website
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.latitude = latitude
        self.longitude = longitude
        self.deliveryRange = deliveryRange
        self.active = active
        self.isGeoCoded = isGeoCoded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case contactName
        case website
        case addressLine1
        case addressLine2
        case city
        case state
        case zipCode
        case latitude
        case longitude
        case deliveryRange
        case active
        case isGeoCoded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(contactName, forKey: .contactName)
        try container.encodeIfPresent(website, forKey: .website)
        try container.encodeIfPresent(addressLine1, forKey: .addressLine1)
        try container.encodeIfPresent(addressLine2, forKey: .addressLine2)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(zipCode, forKey: .zipCode)
        try container.encodeIfPresent(latitude, forKey: .latitude)
        try container.encodeIfPresent(longitude, forKey: .longitude)
        try container.encodeIfPresent(deliveryRange, forKey: .deliveryRange)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(isGeoCoded, forKey: .isGeoCoded)
    }

    public static func == (lhs: BaseVendorLocationViewModel, rhs: BaseVendorLocationViewModel) -> Bool {
        lhs.name == rhs.name &&
        lhs.contactName == rhs.contactName &&
        lhs.website == rhs.website &&
        lhs.addressLine1 == rhs.addressLine1 &&
        lhs.addressLine2 == rhs.addressLine2 &&
        lhs.city == rhs.city &&
        lhs.state == rhs.state &&
        lhs.zipCode == rhs.zipCode &&
        lhs.latitude == rhs.latitude &&
        lhs.longitude == rhs.longitude &&
        lhs.deliveryRange == rhs.deliveryRange &&
        lhs.active == rhs.active &&
        lhs.isGeoCoded == rhs.isGeoCoded
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name?.hashValue)
        hasher.combine(contactName?.hashValue)
        hasher.combine(website?.hashValue)
        hasher.combine(addressLine1?.hashValue)
        hasher.combine(addressLine2?.hashValue)
        hasher.combine(city?.hashValue)
        hasher.combine(state?.hashValue)
        hasher.combine(zipCode?.hashValue)
        hasher.combine(latitude?.hashValue)
        hasher.combine(longitude?.hashValue)
        hasher.combine(deliveryRange?.hashValue)
        hasher.combine(active?.hashValue)
        hasher.combine(isGeoCoded?.hashValue)
        
    }
}

