//
//  LessonVideoModel.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//

import Foundation


class LessonVideoModel {
    var VideoName:String
    var VideoExtension:String
    init(VideoName: String, VideoExtension: String) {
        self.VideoName = VideoName
        self.VideoExtension = VideoExtension
    }
}
