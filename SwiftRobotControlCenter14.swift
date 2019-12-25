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
		levelName = "L55H" //  Level name
        
		super.viewDidLoad()
        
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
        
        chessBoard()
        
    }
    
    func turnLeft() {
        for _ in 0...2 {turnRight()}
    }
    
    func chessBoard() {
        put()
        for _ in 0...6 {
        chessRow()
        turnRight()
        if frontIsClear {
            blackOrWhite()
            turnRight()
        }
        chessRow()
        turnLeft()
        if frontIsClear {
            blackOrWhite()
            turnLeft()
        }
        }
    }
    
    func blackOrWhite() {
        if candyPresent {
            move()
        } else {
            move()
            put()
            
        }
    }
    
    func chessRow() {
        while frontIsClear {
            blackOrWhite()
        }
        
    }
    
	}
    
	

