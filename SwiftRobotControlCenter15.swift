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
        levelName = "L4H" //  Level name
        
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        moveToCenter()
        
    }
    
    func moveToCenter() {
        rowCenter()
        if facingLeft {
            turnLeft()
        } else {
            turnRight()
        }
        rowCenter()
    }
    
    func putCandy() {
        put()
        move()
    }
    
    func coverRowWithCandies() {
        while frontIsClear {
            putCandy()
        }
    }
    
    func turnBack() {
        turnRight()
        turnRight()
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
    func rowCenter() {
        coverRowWithCandies()
        goBack()
        pickLastCandy()
        while candyPresent {
            pick()
            pickLastCandy()
        }
    }
    
    func goBack() {
        turnBack()
        while frontIsClear {move()}
        turnBack()
        pick()
    }
    
    func pickLastCandy() {
        if frontIsClear {
            move()
            while candyPresent {
                move()
            }
            turnBack()
            move()
            
        }
    }
    
}



