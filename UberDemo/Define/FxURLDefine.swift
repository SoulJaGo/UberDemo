//
//  FxURLDefine.swift
//  UberDemo
//
//  Created by SoulJa on 16/7/18.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

import Foundation

func ServerAddress()->String
{
    var address = "http://192.168.0.1"
    #if AppStore
        address = "http://www.uber.com"
    #else
        address = "http://192.168.0.1"
    #endif
    return address
}