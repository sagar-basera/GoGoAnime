//
//  ViewController.swift
//  Zoro.To
//
//  Created by SAGAR SINGH on 14/10/23.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBoutlet's.
    @IBOutlet private weak var bgView: UIView!
    @IBOutlet private weak var emailTF: UITextField!
    @IBOutlet private weak var emailImgIcon: UIImageView!
    @IBOutlet private weak var passwordTF: UITextField!
    @IBOutlet private weak var passwordImgIcon: UIImageView!
    @IBOutlet private weak var signInBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    //MARK: - FUNCTION TO CONFIGURE UI.
    private func configureUI() {
        signInBtn.layer.cornerRadius = signInBtn.frame.height/2
        bgView.addShadow(cornerRadius: 10, shadowRadius: 5, shadowOpacity: 1, color: UIColor.darkGray, shadowOffset: CGSize.zero)
        bgView.addBorder(borderWidth: 0.5, borderColor: UIColor.white)
        emailTF.attributedPlaceholder = NSAttributedString(string: "Enter Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        passwordTF.attributedPlaceholder = NSAttributedString(string: "Enter Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
    }
    
    //MARK: - Sign-In BUTTON ACTION.
    @IBAction private func signInBtnAction(_ sender: UIButton) {
        var arr = [0]
        var x = arr[1]
    }
    
    //MARK: - Register BUTTON ACTION.
    @IBAction private func registerBtnAction(_ sender: UIButton) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

