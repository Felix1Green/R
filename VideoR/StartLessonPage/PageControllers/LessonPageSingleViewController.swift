//
//  LessonPageSingleViewController.swift
//  VideoR
//
//  Created by Aydar on 22.01.2021.
//

import UIKit

class LessonPageSingleViewController: UIViewController {
    weak var PageViewController: UIPageViewController?
    var VideoModel: LessonVideoModel?
    @IBOutlet weak var VideoView: LessonVideoView!
    @IBOutlet weak var LabelView: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let obj = self.VideoModel else {
            fatalError("No input video parameters")
        }
        let path = Bundle.main.path(forResource: obj.VideoName, ofType: obj.VideoExtension)
        self.VideoView.InitPlayerWithURL(url: URL(fileURLWithPath: path!))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.VideoView.StartPlaying()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.VideoView.StopPlaying()
    }
}

extension LessonPageSingleViewController{
    func InitiateView(ParentPageController: UIPageViewController, ViewObject: LessonVideoModel){
        self.PageViewController = ParentPageController
        self.VideoModel = ViewObject
    }
}
