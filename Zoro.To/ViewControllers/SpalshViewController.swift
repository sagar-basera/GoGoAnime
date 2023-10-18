//
//  SpalshViewController.swift
//  Zoro.To
//
//  Created by SAGAR SINGH on 14/10/23.
//

import UIKit
import Firebase

class SpalshViewController: UIViewController {
    //MARK: - IBoutlet's.
    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var titleLbl: UILabel!

    //MARK: - VIEW's LIFECYCLE METHODS.
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - FUNCTION TO CONFIGURE UI.
    private func configureUI() {
        self.navigationController?.isNavigationBarHidden = true
        image.alpha = 0
        titleLbl.alpha = 0
        animateSplash()
        Analytics.logEvent("SplashVC", parameters: ["UserVisitedSplash":true])
    }
    
    private func animateSplash() {
        UIView.animate(withDuration: 1.0, delay: 1.0) {
            self.image.alpha = 1
        } completion: { _ in
            UIView.animate(withDuration: 3.0, delay: 1.5, options: [.transitionCurlUp]) {
                self.titleLbl.alpha = 1
            } completion: { _ in
                UIView.animate(withDuration: 2.0, delay: 1.0) {
                    guard let vc = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else {
                        return
                    }
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }
        }
    }

}
