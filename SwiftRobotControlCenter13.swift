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
		levelName = "L11C" //  Level name
        
		super.viewDidLoad()
        
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
        
        doubleCandy()
        
    }
    
    func doubleCandy() {
        move()
        turnBack()
        while candyPresent {
            moveCandy()
            put()
            goBack()
        }
        goBack()
        while candyPresent {
            moveCandy()
            goBack()
        }
    }
    
    func turnBack() {
        turnRight()
        turnRight()
    }
        
    func moveCandy() {
        pick()
        move()
        put()
        turnBack()
    }
    
    func goBack() {
        move()
        turnBack()
    }
    
	}
    
	

