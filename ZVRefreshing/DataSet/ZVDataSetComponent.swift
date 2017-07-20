//
//  ZVDataSetComponent.swift
//  ZVRefreshing
//
//  Created by zevwings on 2017/7/19.
//  Copyright © 2017年 zevwings. All rights reserved.
//

import Foundation

open class ZVDataSetComponent: UIView, ZVDataSetComponentProtocol {
    
    public enum State {
        case success
        case error(image: UIImage, title: String, description: String)
    }
    
    required public init() {
        super.init(frame: .zero)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

public extension ZVDataSetComponent  {
    
    func beginLoading() {
        
    }
    
    func endLoading(with state: State) {
        // 成功，从父视图移除
        // 失败，切换图片，描述信息
    }
    
}
