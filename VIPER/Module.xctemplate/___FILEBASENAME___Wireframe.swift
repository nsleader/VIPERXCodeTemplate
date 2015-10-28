//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

let ___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier: String = "___FILEBASENAMEASIDENTIFIER___ViewController"

enum ___FILEBASENAMEASIDENTIFIER___Error: ErrorType {
    case ViewIsNot___FILEBASENAMEASIDENTIFIER___ViewController
}

class ___FILEBASENAMEASIDENTIFIER___Wireframe {
	// MARK: - Property

    weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController?
    let rootWireframe = RootWireframe.sharedInstance

    // MARK: - Presentation

    func presentInterface(fromWindow window: UIWindow) {
        do {
            try setupDependency()
            rootWireframe.showRootViewController(viewController!, inWindow: window)
        } catch let error {
            print(error)
        }
    }
    
    // MARK: - Dependency
    
    private func setupDependency() throws {
        
        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        
        // View
        guard let viewController = rootWireframe.mainStoryboard.instantiateViewControllerWithIdentifier(___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier) as? ___FILEBASENAMEASIDENTIFIER___ViewController else {
            throw ___FILEBASENAMEASIDENTIFIER___Error.ViewIsNot___FILEBASENAMEASIDENTIFIER___ViewController
        }
        self.viewController = viewController
        viewController.presenter = presenter
        
        // Interactor
        interactor.output = presenter
        
        // Presenter
        presenter.interactor = interactor
        presenter.wireframe = self
        presenter.view = viewController
    }

}
