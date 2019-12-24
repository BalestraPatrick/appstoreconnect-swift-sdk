//
//  Profile.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation

/// The data structure that represents the resource.
public struct Profile: Codable {

    /// The resource's attributes.
    public let attributes: Profile.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public let `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public let relationships: Profile.Relationships?

    /// The resource type.Value: profiles
    public let type: String = "profiles"

    /// Navigational links that include the self-link.
    public let links: ResourceLinks<ProfileResponse>

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The name for the profile.
        public let name: String?

        ///
        public let platform: BundleIdPlatform?

        public let profileContent: String?

        public let uuid: String?

        public let createDate: Date?

        public let profileState: ProfileState?

        public let profileType: ProfileType?

        public let expirationDate: Date?
    }

    public struct Relationships: Codable {

        /// Profile.Relationships.App
        public let certificates: Profile.Relationships.Certificates?

        /// Profile.Relationships.BetaTesters
        public let devices: Profile.Relationships.Devices?

        /// Profile.Relationships.Builds
        public let bundleId: Profile.Relationships.BundleId?
    }
}

/// MARK: BetaGroup.Relationships
extension Profile.Relationships {

    public struct Certificates: Codable {

        /// Certificates.Relationships.Certificates.Data
        public let data: Profile.Relationships.Certificates.Data?

        /// Certificates.Relationships.Certificates.Links
        public let links: Profile.Relationships.Certificates.Links?

        /// PagingInformation
        public let meta: PagingInformation?
    }

    public struct Devices: Codable {

        /// [Profile.Relationships.Devices.Data]
        public let data: [Profile.Relationships.Devices.Data]?

        /// Profile.Relationships.Devices.Links
        public let links: Profile.Relationships.Devices.Links?

        /// PagingInformation
        public let meta: PagingInformation?
    }

    public struct BundleId: Codable {

        /// [Profile.Relationships.Builds.Data]
        public let data: [Profile.Relationships.BundleId.Data]?

        /// Profile.Relationships.Builds.Links
        public let links: Profile.Relationships.BundleId.Links?
    }
}

/// MARK: Profile.Relationships.App
extension Profile.Relationships.Certificates {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String

        /// The resource type.Value: apps
        public let type: String = "certificates"
    }

    public struct Links: Codable {

        /// uri-reference
        public let related: URL?

        /// uri-reference
        public let `self`: URL?
    }
}

/// MARK: BetaGroup.Relationships.BetaTesters
extension Profile.Relationships.Devices {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String

        /// The resource type.Value: betaTesters
        public let type: String = "devices"
    }

    public struct Links: Codable {

        /// uri-reference
        public let related: URL?

        /// uri-reference
        public let `self`: URL?
    }
}

/// MARK: BetaGroup.Relationships.Builds
extension Profile.Relationships.BundleId {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String

        /// The resource type.Value: builds
        public let type: String = "bundleIds"
    }

    public struct Links: Codable {

        /// uri-reference
        public let related: URL?

        /// uri-reference
        public let `self`: URL?
    }
}
