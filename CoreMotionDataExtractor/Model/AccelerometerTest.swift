//
//  AccelerometerTest.swift
//  CoreMotionDataExtractor
//
//  Created by Amedeo Setti on 01/03/16.
//  Copyright © 2016 Amedeo Setti. All rights reserved.
//

import Foundation

class AccelerometerTest
{
    private let devMotion = DeviceMotionUtility()
    
    init() {
        
    }
    
    convenience init(val: Int) {
        self.init()
    }
    
    deinit {
        
    }
    
    /*
     Acceleration
    */
    
    func startAccelerometerUpdate() -> Bool {
        return self.devMotion.startAccelerometerUpdate()
    }
    
    func stopAccelerometerUpdate() {
        self.devMotion.stopAccelerometerUpdate()
    }
    
    func getAccelerometerData() -> [Double] {
        return self.devMotion.getAccelerometerData()
    }
    
    
    /*
     Gyro
    */
    func startGyroscopeUpdate() -> Bool {
        return self.devMotion.startGyroscopeUpdate()
    }
    
    func stopGyroscopeUpdate() {
        self.devMotion.stopGyroscopeUpdate()
    }
    
    func getGyroscopeData() -> [Double] {
        return self.devMotion.getGyroscopeData()
    }
    

    /*
     Device Motion
    */
    func startDeviceMotionUpdate() -> Bool {
        return self.devMotion.startSensorsUpdate()
    }
    
    func stopDeviceMotionUpdate() {
        self.devMotion.stopSensorsUpdate()
    }
    
    func getDeviceMotionData() -> [[Double]] {
        return self.devMotion.getDeviceMotionData()
    }
    
    
    /*
     Attitude
    */
    func getAttitudeRotMatrix() -> [Double] {
        return self.devMotion.rotMatrix
    }
    
    func getAttitudeQuaternions() -> [Double] {
        return self.devMotion.quaternions
    }
    
    func getEulerAngles() -> [Double] {
        return self.devMotion.eulerAngles
    }
}