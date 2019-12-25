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
		levelName = "L22H" //  Level name
        
		super.viewDidLoad()
        
	}
	
	override func viewDidAppear(_ animated: Bool) {
		
		super.viewDidAppear(animated)
        
        allColumns()
        
    }
    
    func allColumns() {
        twoColumns()
        run()
        twoColumns()
        for _ in 0...1 {move()}
    }
        
    func run() {
        for _ in 0..<3 {
            move()
        }
    }
    
    func build() {
        if candyPresent {
            move()
        } else {
            put()
            move()
        }
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
    func oneColumn() {
        for _ in 0..<8 {
            build()
        }
    }
    
    func twoColumns() {
        turnLeft()
        oneColumn()
        turnRight()
        build()
        run()
        turnRight()
        oneColumn()
        turnLeft()
        build()
    }
    

	}
    
	

