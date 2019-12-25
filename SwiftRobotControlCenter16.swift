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
		levelName = "L666H" //  Level name
        
		super.viewDidLoad()
        
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
        
        pechenki()
            
        
    }
    
    func pechenki() {
        goToWall()
        for _ in 0...3 {
            goToWall()
            if frontIsClear {put()}
        }
    }
    
    func goToWall() {
        while frontIsClear {
            move()
        }
        turnRight()
    }
    

	}
    
	

