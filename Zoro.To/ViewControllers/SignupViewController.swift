//
//  SignupViewController.swift
//  Zoro.To
//
//  Created by SAGAR SINGH on 14/10/23.
//

import UIKit

class SignupViewController: UIViewController {
    //MARK: - IBoutlet's.
    @IBOutlet private weak var crossBtn: UIButton!
    @IBOutlet private weak var bgView: UIView!

    //MARK: - VIEW's LIFECYCLE METHODS.
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - FUNCTION TO CONFIGURE UI.
    private func configureUI() {
        crossBtn.addShadow(cornerRadius: 7, shadowRadius: 5, shadowOpacity: 1, color: UIColor.white, shadowOffset: CGSize.zero)
        bgView.addBorder(borderWidth: 0.5, borderColor: UIColor.white)
        bgView.addShadow(cornerRadius: 10, shadowRadius: 5, shadowOpacity: 1, color: UIColor.darkGray, shadowOffset: CGSize.zero)
    }
    
    //MARK: - Cross BUTTON ACTION.
    @IBAction private func crossBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
