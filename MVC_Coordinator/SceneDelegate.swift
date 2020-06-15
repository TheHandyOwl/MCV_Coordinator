//
//  SceneDelegate.swift
//  MVC_Coordinator
//
//  Created by Carlos on 15/06/2020.
//  Copyright © 2020 TestCompany. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator : MainCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        //guard let _ = (scene as? UIWindowScene) else { return }
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        
        let navController = UINavigationController()
        let coordinator = MainCoordinator(navigationController: navController)
        coordinator.start()
        
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {    }

    func sceneDidBecomeActive(_ scene: UIScene) {    }

    func sceneWillResignActive(_ scene: UIScene) {    }

    func sceneWillEnterForeground(_ scene: UIScene) {    }

    func sceneDidEnterBackground(_ scene: UIScene) {    }

}

