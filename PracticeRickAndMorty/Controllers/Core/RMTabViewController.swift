//
//  ViewController.swift
//  PracticeRickAndMorty
//
//  Created by Daniyal Abuov on 11.05.2023.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupTabs()
    }
    
    private func setupTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let vc1 = UINavigationController(rootViewController: characterVC)
        let vc2 = UINavigationController(rootViewController: locationVC)
        let vc3 = UINavigationController(rootViewController: episodeVC)
        let vc4 = UINavigationController(rootViewController: settingsVC)
        
        vc1.tabBarItem = UITabBarItem(title: "Character",
                                      image: UIImage(systemName: "person"),
                                      tag: 1)
        vc2.tabBarItem = UITabBarItem(title: "Location",
                                      image: UIImage(systemName: "sun.and.horizon"),
                                      tag: 2)
        vc3.tabBarItem = UITabBarItem(title: "Episode",
                                      image: UIImage(systemName: "car.circle.fill"),
                                      tag: 3)
        vc4.tabBarItem = UITabBarItem(title: "Settings",
                                      image: UIImage(systemName: "figure.cooldown"),
                                      tag: 4)
        
        for vc in [vc1, vc2, vc3, vc4] {
            vc.navigationBar.prefersLargeTitles = true
            
        }
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
    
}

