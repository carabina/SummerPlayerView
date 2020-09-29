//
//  SummerPlayerViewConfiguration.swift
//  SummerPlayerViewDemo
//
//  Created by derrick on 2020/08/20.
//  Copyright © 2020 Derrick. All rights reserved.
//

import Foundation


public protocol SummerPlayerViewConfiguration {
    var canShowVideoList: Bool { get }
    var hideControls: Bool { get set }
    var screenMode: ScreenMode { get }
}


