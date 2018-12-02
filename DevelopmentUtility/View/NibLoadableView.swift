//
//  NibLoadableView.swift
//  nrhd
//
//  Created by FUJIKI TAKESHI on 2016/02/04.
//  Copyright © 2016年 takecian. All rights reserved.
//

import UIKit

public protocol NibLoadableView: class {
    static var nibName: String { get }
}

public extension NibLoadableView where Self: UIView {

    public static var nibName: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    public static func createInstance() -> Self {
        return UINib(nibName: nibName, bundle: nil).instantiate(withOwner: self, options: nil)[0] as! Self
    }
    
}
