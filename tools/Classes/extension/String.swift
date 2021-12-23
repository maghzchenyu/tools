//
//  String.swift
//  webeditor_ios
//
//  Created by chenyu on 2018/12/14.
//  Copyright © 2018年 chenyu. All rights reserved.
//

import Foundation

extension String {
    
    public var `extension`: String {
            if let index = self.lastIndex(of: ".") {
            return String(self[index...])
        } else {
            return ""
        }
    }
    
}
