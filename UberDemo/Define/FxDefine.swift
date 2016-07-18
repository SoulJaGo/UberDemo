//
//  FxDefine.swift
//  UberDemo
//
//  Created by SoulJa on 16/7/18.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

import Foundation
import UIKit

let LoadingTip = "加载中..."
let ScreenHeight = UIScreen.mainScreen().bounds.size.height
let iOS8:Float = 8.0

func FxLog(message:String ,function:String = #function)
{
    #if DEBUG
        print("Log:\(message),\(function)")
    #else
        
    #endif
}

func isiPhone5()->Bool
{
    if ScreenHeight == 568 {
        return true
    } else {
        return false
    }
}