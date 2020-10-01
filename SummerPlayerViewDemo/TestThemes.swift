//
//  TestTheme.swift
//  SummerPlayerViewDemo
//
//  Created by derrick on 2020/09/30.
//  Copyright © 2020 Derrick. All rights reserved.
//

import Foundation
import SummerPlayerView
import UIKit


public struct LightTheme: SummerPlayerViewTheme {
    public var backgroundViewColor: UIColor = .black
    
    public var totalTimeLableTextFont = UIFont.boldSystemFont(ofSize: 13)
    public var contentsListviewBackground: UIColor = .black
    public var activityViewColor: UIColor = .black
    public var totalTimeLabelTextColor: UIColor = .white
    public var totalTimeLableBackground: UIColor = .black
    public var sliderTintColor: UIColor = .red
    public var sliderThumbColor: UIColor = .red
    
    public var playerScreenTimelabelsBackground: UIColor = .clear
    public var playerScreenTimelabelsTextFont: UIFont = UIFont.boldSystemFont(ofSize: 13)
    public var playerScreenTimelabelsTextColor: UIColor = .white
    
    public var playerScreenTitleLabelBackground: UIColor = .clear
    public var playerScreenTitleLabelTextFont: UIFont = UIFont.boldSystemFont(ofSize: 16)
    public var playerScreenTitleLabelTextColor: UIColor = .white
    
}


public struct DarkTheme: SummerPlayerViewTheme {
    public var backgroundViewColor: UIColor = .black
    
    public var totalTimeLableTextFont = UIFont.boldSystemFont(ofSize: 13)
    public var contentsListviewBackground: UIColor = .white
    public var activityViewColor: UIColor = .white
    public var totalTimeLabelTextColor: UIColor = .white
    public var totalTimeLableBackground: UIColor = .black
    public var sliderTintColor: UIColor = .red
    public var sliderThumbColor: UIColor = .red
    public var playerScreenTimelabelsBackground: UIColor = .clear
    public var playerScreenTimelabelsTextFont: UIFont = UIFont.boldSystemFont(ofSize: 12)
    public var playerScreenTimelabelsTextColor: UIColor = .white
    
    public var playerScreenTitleLabelBackground: UIColor = .clear
    public var playerScreenTitleLabelTextFont: UIFont = UIFont.boldSystemFont(ofSize: 17)
    public var playerScreenTitleLabelTextColor: UIColor = .black

    
}
