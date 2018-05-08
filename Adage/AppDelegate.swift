//
//  AppDelegate.swift
//  Adage
//
//  Created by Isaac Halvorson on 4/15/18.
//  Copyright © 2018 Levelsoft. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?

	func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		initializeViews()
		return true
	}

	func initializeViews() {
		window = UIWindow(frame: UIScreen.main.bounds)

		// Define initial views
		let masterViewController = MasterViewController()
		let tabBarViewController = TabBarViewController()
		let quoteListNavigationController = UINavigationController()
		let quoteListViewController = QuoteListViewController()
		let moreViewController = UIViewController()

		// Configure quoteListNavigationController
		quoteListNavigationController.navigationBar.prefersLargeTitles = true
		quoteListNavigationController.navigationItem.rightBarButtonItem = quoteListViewController.editButtonItem
		let search = UISearchController(searchResultsController: nil)
		quoteListNavigationController.navigationItem.searchController = search

		// Build view hierarchy
		quoteListNavigationController.pushViewController(quoteListViewController, animated: false)
		tabBarViewController.viewControllers = [quoteListNavigationController, moreViewController]

		quoteListNavigationController.tabBarItem = UITabBarItem(title: "Quotes", image: #imageLiteral(resourceName: "quote-icon-outline"), selectedImage: #imageLiteral(resourceName: "quote-icon-filled"))
		moreViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
		masterViewController.addChildViewController(tabBarViewController)

		// Add to root
		window?.rootViewController = masterViewController
		window?.makeKeyAndVisible()
	}
}
