//
//  TemplatesPageViewController.swift
//  VideoR
//
//  Created by Aydar on 24.01.2021.
//  
//

import UIKit

class TemplatesPageViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: ViewToPresenterTemplatesPageProtocol?
    @IBOutlet weak var TemplateCollectionView: UICollectionView!
    @IBOutlet weak var TemplateSearchBar: UISearchBar!
    @IBOutlet weak var TemplateTabBar: UITabBar!
    private var TemplateCollectionArray: [TemplateModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TemplateCollectionView.delegate = self
        TemplateCollectionView.dataSource = self
        
        
        TemplatesPageRouter.createModule(viewController: self)
        
        // Get Templates information
        self.TemplateCollectionArray = self.presenter?.TemplatePageLoading() ?? []
    }
    
}

extension TemplatesPageViewController: PresenterToViewTemplatesPageProtocol{
//    func RenderTemplate(){
//        let renderEng = RenderAnimation()
//        renderEng.renderAnimation(screenWidth: .nan, screenHeight: .nan, animationLayer: UIView().layer, audioUrl: , complete: nil)
//    }
}


extension TemplatesPageViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.TemplateCollectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TemplatePageConstants.TemplateCollectionViewCellIdentifier.rawValue, for: indexPath) as? TemplatesPageCollectionViewCell else{
            return TemplatesPageCollectionViewCell()
        }
        cell.InitializeView(initModel: self.TemplateCollectionArray[indexPath.row])
        return cell
    }
}
