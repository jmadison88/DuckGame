//
//  Level.swift
//  DuckGame
//
//  Created by Josh Madison on 3/20/24.
//

import SpriteKit
import GameplayKit

class Level: SKScene {
    
    var titleLabel = SKLabelNode()
    var originalDuck = SKSpriteNode()
    var startButton = SKSpriteNode()
    var duck = SKSpriteNode()
    var duckSwimming = SKSpriteNode()
    
    
    override func didMove(to view: SKView) {
        createBackground()
    }
    
    func createBackground() {
        let space = SKTexture(imageNamed: "duckgamebackground")
        for i in 0...1 {
            let spaceBackground = SKSpriteNode(texture: space)
            spaceBackground.zPosition = -3
            spaceBackground.position = CGPoint(x: 0, y: spaceBackground.size.height * CGFloat(i))
            addChild((spaceBackground))
        }
    }
    
    func createLabels() {
        let logo = SKTexture(imageNamed: "RubberWarriorsLogo")
        let rubberWarriorsLogo = SKSpriteNode(texture: logo)
        rubberWarriorsLogo.position = CGPoint(x: frame.midX, y: frame.maxY - 250)
        rubberWarriorsLogo.zPosition = -2
        addChild(rubberWarriorsLogo)
        let scaleBackward = SKAction.scale(to: 0.25, duration: 0.2)
        let scaleForward = SKAction.scale(to: 1.25, duration: 0.3)
        let scaleBackward2 = SKAction.scale(to: 1, duration: 0.2)
        let scaleSequence = SKAction.sequence([scaleBackward, scaleForward, scaleBackward2])
        rubberWarriorsLogo.run(scaleSequence)
    }
    
    func createButtons() {
        let normalTexture = SKTexture(imageNamed: "startButton")
        let selectedTexture = SKTexture(imageNamed: "selectedButton")
        let customButton = CustomButton(defaultTexture: normalTexture, selectedTexture: selectedTexture, size: CGSize(width: 250, height: 250))
        customButton.position = CGPoint(x: frame.midX, y: frame.midY - 900)
        customButton.zPosition = -1
        customButton.name = "customButton"
        addChild(customButton)
        let moveUp = SKAction.moveTo(y: frame.midY - 525, duration: 0.5)
        customButton.run(moveUp)
    }
    
    func createDucks() {
        let duck1 = SKTexture(imageNamed: "Original")
        duck = SKSpriteNode(texture: duck1, size: CGSize(width: 100, height: 100))
        duck.zPosition = 0
        addChild(duck)
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
