//
//  StoryboardInitializable.swift
//  DevelopmentUtility
//
//  Created by TAKESHI FUJIKI on 2018/12/27.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

protocol StoryboardInitializable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardInitializable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
    
    static func initFromStoryboard(name: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: name, bundle: Bundle(for: self))
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
