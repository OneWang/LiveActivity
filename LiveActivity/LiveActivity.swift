//
//  LiveActivity.swift
//  LiveActivityExtension
//
//  Created by wangqingfei on 2023/3/13.
//

import Foundation
import WidgetKit
import SwiftUI

struct LiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for:LiveActivityWidgetAttributes.self) { context in
            VStack {
                Spacer(minLength: 20)
                Link(destination: URL(string: "http://www.baidu.com")!, label: {
                    Label {
                        Text("dfsafsdf" + context.attributes.name).foregroundColor(.red)
                    } icon: {
                        Image(systemName: "bsf").foregroundColor(.yellow)
                    }.font(.bold(.title)())
                })
                
                Spacer()
                
                Label {
                    Text("etw" + String(context.state.progress)).foregroundColor(.yellow)
                } icon: {
                    Image(systemName: "").foregroundColor(.yellow)
                }.font(.bold(.title)())
            }
            Spacer(minLength: 20)
                .activityBackgroundTint(.gray)
                .activitySystemActionForegroundColor(.indigo)
        } dynamicIsland: { connetxt in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    Text("leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("bottom")
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T")
            } minimal: {
                Text("Min")
            }
            .widgetURL(URL(string: ""))
            .keylineTint(.red)
        }
    }
}
