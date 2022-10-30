//
//  SceneDelegate.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 19/07/22.
//

import UIKit
import FirebaseAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func changeRootViewController(_ vc: UIViewController, animated: Bool = true)
    {
        guard let window = self.window else
        {
            return
        }
        
        // change the root view controller to your specific view controller
        window.rootViewController = vc
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
    {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
        let mainStoryboard = UIStoryboard(name: Storyboards.Name.Main, bundle: nil)
        let tabBarStoryboard = UIStoryboard(name: Storyboards.Name.TabBar, bundle: nil)
        
        // If user is logged in before.
        if let loggedUserName = Auth.auth().currentUser?.displayName
        {
            // instantiate the tab bar controller and set it as root view controller
            let tabBarController = tabBarStoryboard.instantiateViewController(withIdentifier: Storyboards.VCID.TabBarController)
            window?.rootViewController = tabBarController
        }
        
        else
        {
            // if user isn't logged in
            // instantiate the navigation controller and set it as root view controller
            let signInNavController = mainStoryboard.instantiateViewController(withIdentifier: Storyboards.VCID.SignInNavigationController)
            window?.rootViewController = signInNavController
        }
    }

    func sceneDidDisconnect(_ scene: UIScene)
    {
        print("sceneDidDisconnect")
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene)
    {
        print("sceneDidBecomeActive")
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene)
    {
        print("sceneWillResignActive")
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene)
    {
        print("sceneWillEnterForeground")
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene)
    {
        
        print("sceneDidEnterBackground")
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }

}

