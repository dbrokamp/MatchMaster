//
//  GameViewController.swift
//  MatchMaster
//
//  Created by Drew Brokamp on 3/27/24.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'

            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .aspectFill
            view.presentScene(scene)
            //            if let scene = SKScene(fileNamed: "GameScene") {
//                // Set the scale mode to scale to fit the window
//                scene.scaleMode = .aspectFill
//                
//                // Present the scene
//                view.presentScene(scene)
//            }
            
            view.ignoresSiblingOrder = true
            view.allowsTransparency = true
            view.showsFPS = true
            view.showsNodeCount = true
            view.backgroundColor = .clear
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
