//
// CreateUnitCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class CreateUnitCommand: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: 25, pattern: nil)
    static let abbreviationRule = StringRule(minLength: 1, maxLength: 25, pattern: nil)
    public var name: String
    public var abbreviation: String

    public init(name: String, abbreviation: String) {
        self.name = name
        self.abbreviation = abbreviation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case abbreviation
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(abbreviation, forKey: .abbreviation)
    }

    public static func == (lhs: CreateUnitCommand, rhs: CreateUnitCommand) -> Bool {
        lhs.name == rhs.name &&
        lhs.abbreviation == rhs.abbreviation
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name.hashValue)
        hasher.combine(abbreviation.hashValue)
        
    }
}
