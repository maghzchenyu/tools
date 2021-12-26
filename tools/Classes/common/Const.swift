//
//  Const.swift
//  tools
//
//  Created by 陈宇 on 2021/12/26.
//

import Foundation


public final class  Const {
    class func statusHeight() -> CGFloat {
        return 20.0
    }
}


/// 主窗口
public var keyWindow: UIWindow? {
    return UIApplication.shared.keyWindow
}

/// 是否iPhoneX
public var isiPhoneX: Bool {
    return UIDevice.isiPhoneXScreen()
}

/// 屏幕宽度
public var screenWidth: CGFloat {
    return min(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
}

/// 屏幕高度
public var screenHeight: CGFloat {
    return max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
}

// 状态栏高度
public var statusBarHeight: CGFloat {
    return isiPhoneX ? UIDevice.topSafeInset : 20
}

// 导航栏高度
public let navBarHeight: CGFloat = 44

// 导航栏加状态栏高度
public var navViewHeight : CGFloat {
    return navBarHeight + statusBarHeight
}

// Tabbar高度
public let tabBarHeight: CGFloat = 49

// Tabbar高度
public var tabViewHeight: CGFloat {
    return tabBarHeight + UIDevice.bottomSafeInset
}

// 去除导航栏和tab的高度
public var contentNoNavNoTabHeight: CGFloat {
    return screenHeight - navViewHeight - tabViewHeight
}

// 底部安全间隔
var bottomSafeMargin : CGFloat {
    return UIDevice.bottomSafeInset
}

// 左右安全间隔
public var landscapeSafeMargin : CGFloat {
    return isiPhoneX ? 44 : 0
}

// 视频左右安全间隔
public var landscapeVideoSafeMargin : CGFloat {
    return isiPhoneX ? 64 : 0
}

// 底部安全间隔
public var landscapeBottomSafeMargin : CGFloat {
    return isiPhoneX ? 21 : 0
}

// 顶底部安全间隔
public var topSafeMargin : CGFloat {
    return isiPhoneX ? 24 : 0
}

public var statusHeight : CGFloat {
    return topSafeMargin + 20
}

public var common_corner_radius: CGFloat {
    return 2.0
}
