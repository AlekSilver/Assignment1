//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
	
	//  Level name setup
	override func viewDidLoad() {
		levelName = "L3C" //  Level name
        
		super.viewDidLoad()
        
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
        
        goToFinish()
        
    }
        
        func goToFinish() {
            for _ in 0..<15 {
            if frontIsClear {
                move()
            } else {
                goAroundPeak()
            }
            }
        }
        
        func goAroundPeak() {
            turnRight()
            goAlongWall()
            uTurn()
            goToWall()
            
        }
        
        func goAlongWall() {
            while leftIsBlocked {
                move()
            }
        }
        
        func uTurn() {
            turnLeft()
            move()
            turnLeft()
        }
        
        func turnLeft() {
            turnRight()
            turnRight()
            turnRight()
        }
    
    func goToWall() {
        while frontIsClear {
            move()
        }
        turnRight()
    }

	}
    
	

