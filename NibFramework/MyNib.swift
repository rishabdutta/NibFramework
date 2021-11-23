//
//  MyNib.swift
//  NibFramework
//
//  Created by Rishab Dutta on 23/11/21.
//

import UIKit

public class MyNib: UIView {
    public static func instance() -> MyNib {
//        let bundle = Bundle(identifier: "com.nibFramework.NibFramework")
        let bundle = Bundle(for: MyNib.self)
        let nib = UINib(nibName: "\(MyNib.self)", bundle: bundle)
        let array = nib.instantiate(withOwner: self, options: nil)
        print(array)
        let adView = array.first as! MyNib
        return adView
    }
}
