/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import Foundation

enum UserInfoAction: Action {
    case profileInfo(info: ProfileInfo)
    case oauthInfo(info: OAuthInfo)
    case scopedKey(key: String)
}

extension UserInfoAction: Equatable {
    static func ==(lhs: UserInfoAction, rhs: UserInfoAction) -> Bool {
        switch (lhs, rhs) {
        case (.scopedKey(let lhKey), .scopedKey(let rhKey)):
            return lhKey == rhKey
        case (.profileInfo(let lhInfo), .profileInfo(let rhInfo)):
            return lhInfo == rhInfo
        case (.oauthInfo(let lhInfo), .oauthInfo(let rhInfo)):
            return lhInfo == rhInfo
        default:
            return false
        }
    }
}
