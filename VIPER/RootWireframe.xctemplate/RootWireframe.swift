//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit


class RootWireframe {
	
    static let sharedInstance = RootWireframe()
    
    // MARK: - Storyboards
    
    let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    
    // MARK: - Presentation
    
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    private func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        return window.rootViewController as! UINavigationController
    }

}
