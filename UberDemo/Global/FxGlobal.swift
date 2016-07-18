//
//  FxGlobal.swift
//  UberDemo
//
//  Created by SoulJa on 16/7/18.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

import Foundation
import UIKit

func isSystemiOS8()->Bool
{
    let version = UIDevice.currentDevice().systemVersion as NSString
    if (version.floatValue - iOS8 < 0.001) {
        return true
    } else {
        return false
    }
}