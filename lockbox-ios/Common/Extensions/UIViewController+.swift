/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import UIKit

protocol ErrorView {
    func displayError(_ error: Error)
}

extension UIViewController: ErrorView {
    func displayError(_ error: Error) {
        let alertController = UIAlertController(title: error.localizedDescription, message: nil, preferredStyle: .alert)

        let cancelAction = UIAlertAction(title: Constant.string.ok, style: .cancel)
        alertController.addAction(cancelAction)

        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

extension UIViewController {
    func preloadView() {
        _ = self.view
    }
}
