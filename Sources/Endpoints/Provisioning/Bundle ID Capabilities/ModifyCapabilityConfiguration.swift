//
//  ModifyCapabilityConfiguration.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation

extension APIEndpoint where T == BundleIdResponse {

    /// Modify a capability for a bundle ID.
    public static func modifyCapability(
        id: String,
        capabilityType: CapabilityType,
        settings: [CapabilitySetting]? = nil) -> APIEndpoint {

        let request = BundleIdCapabilityUpdateRequest(
            bundleId: id,
            capabilityType: capabilityType,
            settings: settings
        )

        return APIEndpoint(
            path: "bundleIdCapabilities/\(id)",
            method: .patch,
            parameters: nil,
            body: try? JSONEncoder().encode(request))
    }
}
