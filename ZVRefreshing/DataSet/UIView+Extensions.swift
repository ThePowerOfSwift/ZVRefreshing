//
//  UIView+Extensions.swift
//  ZVRefreshing
//
//  Created by zevwings on 2017/7/19.
//  Copyright © 2017年 zevwings. All rights reserved.
//

import Foundation

extension UIView {
    
    struct AssociatedKey {
        static let dataSet = "com.zevwings.associatedkey.dataset"
    }
    
    var dataSet: ZVDataSetComponentProtocol? {
        get {
            let value = objc_getAssociatedObject(self, AssociatedKey.dataSet) as? ZVDataSetComponentProtocol
            return value
        }
        set {
            objc_setAssociatedObject(self, AssociatedKey.dataSet, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    func register(dataSet: ZVDataSetComponent) {
        self.dataSet = dataSet
    }
}
