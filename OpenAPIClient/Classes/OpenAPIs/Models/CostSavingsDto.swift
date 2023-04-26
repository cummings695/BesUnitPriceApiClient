//
// CostSavingsDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class CostSavingsDto: Codable, JSONEncodable, Hashable {

    public var found: Double?
    public var lost: Double?
    public var net: Double?
    public var netPercent: Double?
    public var total: Double?

    public init(found: Double? = nil, lost: Double? = nil, net: Double? = nil, netPercent: Double? = nil, total: Double? = nil) {
        self.found = found
        self.lost = lost
        self.net = net
        self.netPercent = netPercent
        self.total = total
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case found
        case lost
        case net
        case netPercent
        case total
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(found, forKey: .found)
        try container.encodeIfPresent(lost, forKey: .lost)
        try container.encodeIfPresent(net, forKey: .net)
        try container.encodeIfPresent(netPercent, forKey: .netPercent)
        try container.encodeIfPresent(total, forKey: .total)
    }

    public static func == (lhs: CostSavingsDto, rhs: CostSavingsDto) -> Bool {
        lhs.found == rhs.found &&
        lhs.lost == rhs.lost &&
        lhs.net == rhs.net &&
        lhs.netPercent == rhs.netPercent &&
        lhs.total == rhs.total
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(found?.hashValue)
        hasher.combine(lost?.hashValue)
        hasher.combine(net?.hashValue)
        hasher.combine(netPercent?.hashValue)
        hasher.combine(total?.hashValue)
        
    }
}

