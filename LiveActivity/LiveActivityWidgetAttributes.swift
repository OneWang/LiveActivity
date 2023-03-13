//
//  LiveActivityWidgetAttributes.swift
//  LiveActivityExtension
//
//  Created by wangqingfei on 2023/3/13.
//

import Foundation
import ActivityKit

// 描述实时活动的数据
struct LiveActivityWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var progress: Int
        var statusName: String
    }
    
    var name: String
    
}
