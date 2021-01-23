//
//  LessonPageModuleInteractor.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//  
//

import Foundation

class LessonPageModuleInteractor: PresenterToInteractorLessonPageModuleProtocol {
    // MARK: Properties
    var presenter: InteractorToPresenterLessonPageModuleProtocol?
    static let instance = LessonPageModuleInteractor()
    let LessonStoryBoardSource:[(String,LessonVideoModel)]
    
    private init(){
        let VideoName = "StartPageBackgroundVideo"
        let VideoExtension = "mp4"
        LessonStoryBoardSource = [
            ("FirstViewController", .init(VideoName: VideoName, VideoExtension: VideoExtension)),
            ("SecondViewController",.init(VideoName: VideoName, VideoExtension: VideoExtension)),
            ("ThirdViewController", .init(VideoName: VideoName, VideoExtension: VideoExtension))]
    }
    
    func GetLessonPageVideoEntities()-> Array<(String, LessonVideoModel)>{
        return LessonStoryBoardSource
    }
    
}
