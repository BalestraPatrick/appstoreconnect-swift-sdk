//
//  ListAllCapabilitiesForBundleId.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation

extension APIEndpoint where T == BundleIdCapabilitiesResponse {

    /// Get a list of all profiles for a specific bundle ID.
    public static func listAllProfileIdsForBundleId(
        id: String,
        fields: [BundleIds.Field]? = nil,
        limit: Int? = nil) -> APIEndpoint {

        var parameters = [String: Any]()
        if let fields = fields { parameters.add(fields) }
        if let limit = limit { parameters["limit"] = limit }

        return APIEndpoint(
            path: "bundleIds/\(id)/bundleIdCapabilities",
            method: .get,
            parameters: parameters)
    }
}
