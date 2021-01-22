//
//  LessonsDataSource.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//

import UIKit

class LessonsDataSource {
    static let instance = LessonsDataSource()
    let LessonStoryBoardSource:[(String,LessonVideoModel)]
    
    private init(){
        let VideoName = "StartPageBackgroundVideo"
        let VideoExtension = "mp4"
        LessonStoryBoardSource = [
            ("FirstViewController", .init(VideoName: VideoName, VideoExtension: VideoExtension)),
            ("SecondViewController",.init(VideoName: VideoName, VideoExtension: VideoExtension)),
            ("ThirdViewController", .init(VideoName: VideoName, VideoExtension: VideoExtension))]
    }
    
    func GetLessonPageViewControllers()-> Array<(String, LessonVideoModel)>{
        return LessonStoryBoardSource
    }
}
