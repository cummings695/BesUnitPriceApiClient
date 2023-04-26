//
// CreateInvitationPostViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class CreateInvitationPostViewModel: Codable, JSONEncodable, Hashable {

    public var restaurantId: Int64?
    public var email: String?

    public init(restaurantId: Int64? = nil, email: String? = nil) {
        self.restaurantId = restaurantId
        self.email = email
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case restaurantId
        case email
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(restaurantId, forKey: .restaurantId)
        try container.encodeIfPresent(email, forKey: .email)
    }

    public static func == (lhs: CreateInvitationPostViewModel, rhs: CreateInvitationPostViewModel) -> Bool {
        lhs.restaurantId == rhs.restaurantId &&
        lhs.email == rhs.email
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(restaurantId?.hashValue)
        hasher.combine(email?.hashValue)
        
    }
}

