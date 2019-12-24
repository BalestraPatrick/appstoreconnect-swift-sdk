//
//  DisableCapability.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation

extension APIEndpoint where T == Void {

    /// Disable a capability for a bundle ID.
    public static func disableCapability(id: String) -> APIEndpoint {

        return APIEndpoint(
            path: "bundleIdCapabilities/\(id)",
            method: .delete,
            parameters: nil)
    }
}
