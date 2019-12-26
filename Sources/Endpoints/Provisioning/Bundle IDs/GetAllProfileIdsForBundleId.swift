//
//  GetAllProfileIdsForBundleId.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation

extension APIEndpoint where T == BundleIdProfilesLinkagesResponse {

    /// Get the resource IDs for all profiles associated with a specific bundle ID.
    public static func getAllProfileIdsForBundleId(
        id: String,
        limit: Int? = nil) -> APIEndpoint {

        var parameters = [String: Any]()
        if let limit = limit { parameters["limit"] = limit }

        return APIEndpoint(
            path: "bundleIds/\(id)/relationships/profiles",
            method: .get,
            parameters: parameters)
    }
}