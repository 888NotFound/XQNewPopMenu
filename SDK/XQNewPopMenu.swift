//
//  XQNewPopMenu.swift
//  XQPopMenuDemo
//
//  Created by WXQ on 2020/7/23.
//  Copyright © 2020 WXQ. All rights reserved.
//

import Foundation
import PopMenu

public class XQNewPopMenu: NSObject, PopMenuViewControllerDelegate {
    
    public typealias XQNewPopMenuCallback = () -> ()
    public typealias XQNewPopMenuIndexCallback = (_ index: Int) -> ()
    
    private static let `default` = XQNewPopMenu()
    private var callback: XQNewPopMenuIndexCallback?
    
    @objc
    public class func show(with view: UIView, vc: UIViewController? = nil, titles: [String], callback: XQNewPopMenuIndexCallback?) {
        
        PopMenuManager.default.popMenuDelegate = XQNewPopMenu.default
        XQNewPopMenu.default.callback = callback
        
        weak var pm = PopMenuManager.default
        var itemArr = [PopMenuDefaultAction]()
        for (index, item) in titles.enumerated() {
//            let action = PopMenuDefaultAction.init(title: item, image: nil, color: nil, didSelect: { (action) in
//                callback?(index)
//            })
            
            let action = PopMenuDefaultAction.init(title: item, image: nil, color: nil, didSelect: nil)
            itemArr.append(action)
        }
        
        PopMenuManager.default.actions = itemArr
        PopMenuManager.default.popMenuAppearance.popMenuPresentationStyle = PopMenuPresentationStyle.near(.left)
        PopMenuManager.default.present(sourceView: view, on: vc, animated: true, completion: nil)
        
    }
    
    // MARK: - PopMenuViewControllerDelegate
    public func popMenuDidSelectItem(_ popMenuViewController: PopMenuViewController, at index: Int) {
        self.callback?(index)
        self.callback = nil
    }
    
    
}
