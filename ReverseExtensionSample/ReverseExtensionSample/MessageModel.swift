//
//  MessageModel.swift
//  ReverseExtensionSample
//
//  Created by marty-suzuki on 2017/03/02.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import Foundation

struct MessageModel {
    private struct Const {
        static let imageNames: [String] = ["marty1", "marty2", "doc1", "doc2"]
        static let messags: [String] = [
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10"
        ]
        static let formatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            return formatter
        }()
    }
    
    let imageName: String
    let message: String
    let time: String
    
    init(index: Int) {
        imageName = Const.imageNames[Int(arc4random_uniform(UInt32(Const.imageNames.count)))]
        message = Const.messags[index]
        time = Const.formatter.string(from: Date())
    }
}
