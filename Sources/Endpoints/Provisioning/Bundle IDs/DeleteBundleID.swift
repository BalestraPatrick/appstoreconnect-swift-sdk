//
//  DeleteBundleID.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation

extension APIEndpoint where T == Void {

    /// Delete a bundle ID that is used for app development.
    public static func delete(bundleWithId id: String) -> APIEndpoint {

        return APIEndpoint(
            path: "bundleIds/\(id)",
            method: .delete,
            parameters: nil)
    }
}
