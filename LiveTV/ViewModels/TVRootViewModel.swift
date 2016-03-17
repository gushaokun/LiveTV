//
//  RootViewModel.swift
//  LiveTV
//
//  Created by Gavin on 16/2/26.
//  Copyright © 2016年 Gavin. All rights reserved.
//

import UIKit

class TVRootViewModel: NSObject {
    
    var controller:UIViewController?
    var channels:NSDictionary?
    let baseUrl = "http://60.214.208.202:9222/mweb/cmv/"

    override init() {
        super.init()
    }
    
    convenience init(target:UIViewController) {
        self.init()
        controller = target
    }
    
    func channelDatas() -> NSDictionary?{
        return channels
    }
    
    func intilizedData(complete:((NSDictionary?)->())){
        let path = NSBundle.mainBundle().pathForResource("Channels", ofType: "plist")
        channels = NSDictionary(contentsOfFile: path!)
        complete(channels!)
    }
    
}
