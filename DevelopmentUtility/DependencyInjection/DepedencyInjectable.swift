//
//  DepedencyInjectable.swift
//  iOSCollection
//
//  Created by TAKESHI FUJIKI on 2018/12/02.
//  Copyright © 2018 takecian. All rights reserved.
//

import Foundation

public protocol DepedencyInjectable {
    associatedtype Dependency
    static func make(withDependency dependency: Dependency) -> Self
}
