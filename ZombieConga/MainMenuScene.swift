//
//  MainMenuScene.swift
//  Zombie Conga
//
//  Created by Bell, Ryan J. on 3/6/18.
//  Copyright © 2018 Bell, Ryan J. All rights reserved.
//
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    let background = SKSpriteNode(imageNamed: "MainMenu")
    
    override func didMove(to view: SKView) {
        background.zPosition = -1
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(background)
    }
    
    #if os(iOS)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sceneTapped()
    }
    #else
    override func mouseDown(with theEvent: NSEvent) {
        sceneTapped()
    }

    #endif
    
    func sceneTapped() {
        let gameScene = GameScene(size: size)
        gameScene.scaleMode = scaleMode
        
        let transition = SKTransition.doorway(withDuration: 1.5)
        view?.presentScene(gameScene, transition: transition)
    }
}
