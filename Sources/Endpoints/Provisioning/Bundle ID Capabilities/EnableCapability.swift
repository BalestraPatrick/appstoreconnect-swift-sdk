//
//  EnableCapability.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation

extension APIEndpoint where T == BundleIdResponse {

    /// Enable a capability for a bundle ID.
    public static func enableCapability(
        id: String,
        capabilityType: CapabilityType,
        settings: [CapabilitySetting]? = nil) -> APIEndpoint {

        let request = BundleIdCapabilityCreateRequest(
            bundleId: id,
            capabilityType: capabilityType,
            settings: settings
        )

        return APIEndpoint(
            path: "bundleIdCapabilities",
            method: .post,
            parameters: nil,
            body: try? JSONEncoder().encode(request))
    }
}
