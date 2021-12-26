//
//  UIDevice.swift
//  tools
//
//  Created by 陈宇 on 2021/12/26.
//

import Foundation

extension UIDevice {
    /// 是否刘海机型
    static let isiPhoneXSeries: Bool = {
        return topSafeInset > 0
    }()
    
    /// 底部安全距离
    static let bottomSafeInset: CGFloat = {
        return safeInset?.bottom ?? 0
    }()
    
    /// 顶部安全距离
    static let topSafeInset: CGFloat = {
        return safeInset?.top ?? 0
    }()
    
    /// 顶部安全距离
    static let safeInset: UIEdgeInsets? = {
        if UIDevice.current.userInterfaceIdiom != UIUserInterfaceIdiom.phone {
            return nil
        }
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.delegate?.window
            return window??.safeAreaInsets
        }
        
        return nil
    }()
    
    /// 判断是否是模拟器
    ///
    /// - Returns: 是 - true
    static let isSimulator: Bool = {
        var isSim = false
        #if arch(i386) || arch(x86_64)
        isSim = true
        #endif
        return isSim
    }()
    
    static let offset: CGFloat = {
        return topSafeMargin
    }()
    
    static func isiPhoneXScreen() -> Bool {
        guard #available(iOS 11.0, *) else {
            return false
        }
        let isX = UIApplication.shared.windows[0].safeAreaInsets.bottom > 0
        //print("是不是刘海屏呢--->\(isX)")
        return isX
    }
}
