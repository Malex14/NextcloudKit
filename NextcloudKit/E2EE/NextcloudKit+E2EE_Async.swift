//
//  NextcloudKit+E2EE_Async.swift
//  NextcloudKit
//
//  Created by Marino Faggiana on 19/10/22.
//
//  Copyright © 2022 Marino Faggiana. All rights reserved.
//  Author Marino Faggiana <marino.faggiana@nextcloud.com>
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation

@available(iOS 13.0, *)
extension NextcloudKit {

    public func markE2EEFolder(fileId: String,
                               delete: Bool,
                               options: NKRequestOptions = NKRequestOptions()) async -> (account: String, error: NKError) {

        await withUnsafeContinuation({ continuation in
            markE2EEFolder(fileId: fileId, delete: delete, options: options) { account, error in
                continuation.resume(returning: (account: account, error: error))
            }
        })
    }

    ///
    /// - Parameters:
    ///     - fileId: the nextcloud fileId
    ///     - method: POST / DELETE
    ///     - optionsE2EE.e2eToken: e2eToken
    ///
    public func lockE2EEFolder(fileId: String,
                               method: String,
                               optionsE2EE: NKRequestOptionsE2EE,
                               options: NKRequestOptions = NKRequestOptions()) async -> (account: String, e2eToken: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            lockE2EEFolder(fileId: fileId, method: method, optionsE2EE: optionsE2EE, options: options) { account, e2eToken, data, error in
                continuation.resume(returning: (account: account, e2eToken: e2eToken, data: data, error: error))
            }
        })
    }

    ///
    /// - Parameters:
    ///     - fileId: the nextcloud fileId
    ///     - optionsE2EE.e2eToken: e2eToken
    ///
    public func getE2EEMetadata(fileId: String,
                                optionsE2EE: NKRequestOptionsE2EE,
                                options: NKRequestOptions = NKRequestOptions()) async -> (account: String, e2eMetadata: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            getE2EEMetadata(fileId: fileId, optionsE2EE: optionsE2EE, options: options) { account, e2eMetadata, data, error in
                continuation.resume(returning: (account: account, e2eMetadata: e2eMetadata, data: data, error: error))
            }
        })
    }

    ///
    /// - Parameters:
    ///     - fileId: the nextcloud fileId
    ///     - method: POST / PUT / DELETE
    ///     - optionsE2EE.e2eToken: e2eToken
    ///     - optionsE2EE.e2eMetadata: e2eMetadata (optional)
    ///
    public func putE2EEMetadata(fileId: String,
                                method: String,
                                optionsE2EE: NKRequestOptionsE2EE,
                                options: NKRequestOptions = NKRequestOptions()) async -> (account: String, metadata: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            putE2EEMetadata(fileId: fileId, method: method, optionsE2EE: optionsE2EE, options: options) { account, metadata, data, error in
                continuation.resume(returning: (account: account, metadata: metadata, data:data, error: error))
            }
        })
    }

    public func getE2EECertificate(options: NKRequestOptions = NKRequestOptions()) async -> (account: String, certificate: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            getE2EECertificate(options: options) { account, certificate, data, error in
                continuation.resume(returning: (account: account, certificate:certificate, data:data, error:error))
            }
        })
    }

    public func getE2EEPrivateKey(options: NKRequestOptions = NKRequestOptions()) async -> (account: String, privateKey: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            getE2EEPrivateKey(options: options) { account, privateKey, data, error in
                continuation.resume(returning: (account: account, privateKey:privateKey, data:data, error:error))
            }
        })
    }

    public func getE2EEPublicKey(options: NKRequestOptions = NKRequestOptions()) async -> (account: String, publicKey: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            getE2EEPublicKey(options: options) { account, publicKey, data, error in
                continuation.resume(returning: (account: account, publicKey:publicKey, data:data, error:error))
            }
        })
    }

    ///
    /// - Parameters:
    ///     - optionsE2EE.csr: csr
    ///
    public func signE2EECertificate(optionsE2EE: NKRequestOptionsE2EE,
                                    options: NKRequestOptions = NKRequestOptions()) async -> (account: String, certificate: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            signE2EECertificate(optionsE2EE: optionsE2EE, options: options) { account, certificate, data, error in
                continuation.resume(returning: (account: account, certificate:certificate, data:data, error:error))
            }
        })
    }

    ///
    /// - Parameters:
    ///     - optionsE2EE.privateKey: privateKey
    ///
    public func storeE2EEPrivateKey(optionsE2EE: NKRequestOptionsE2EE,
                                    options: NKRequestOptions = NKRequestOptions()) async -> (account: String, privateKey: String?, data: Data?, error: NKError) {

        await withUnsafeContinuation({ continuation in
            storeE2EEPrivateKey(optionsE2EE: optionsE2EE, options: options) { account, privateKey, data, error in
                continuation.resume(returning: (account: account, privateKey: privateKey, data: data, error: error))
            }
        })
    }

    public func deleteE2EECertificate(options: NKRequestOptions = NKRequestOptions()) async -> (account: String, error: NKError) {

        await withUnsafeContinuation({ continuation in
            deleteE2EECertificate(options: options) { account, error in
                continuation.resume(returning: (account: account, error: error))
            }
        })
    }

    public func deleteE2EEPrivateKey(options: NKRequestOptions = NKRequestOptions()) async -> (account: String, error: NKError) {

        await withUnsafeContinuation({ continuation in
            deleteE2EEPrivateKey(options: options) { account, error in
                continuation.resume(returning: (account: account, error: error))
            }
        })
    }
}
