//
// RoleDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class RoleDto: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var name: String?
    public var description: String?
    public var permissions: [String]?

    public init(id: String? = nil, name: String? = nil, description: String? = nil, permissions: [String]? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.permissions = permissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
        case permissions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(permissions, forKey: .permissions)
    }

    public static func == (lhs: RoleDto, rhs: RoleDto) -> Bool {
        lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.description == rhs.description &&
        lhs.permissions == rhs.permissions
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(description?.hashValue)
        hasher.combine(permissions?.hashValue)
        
    }
}
