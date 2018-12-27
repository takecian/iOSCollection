//
//  StoryboardInitializable.swift
//  DevelopmentUtility
//
//  Created by TAKESHI FUJIKI on 2018/12/27.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

public protocol StoryboardInitializable {
    static var storyboardIdentifier: String { get }
}

public extension StoryboardInitializable where Self: UIViewController {
    
    public static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
    
    public static func initFromStoryboard(name: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: name, bundle: Bundle(for: self))
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
