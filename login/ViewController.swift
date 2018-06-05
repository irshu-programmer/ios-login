//
//  ViewController.swift
//  login
//
//  Created by Irshu on 05/06/18.
//  Copyright © 2018 Irshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userNameTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "User Name"
        text.backgroundColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    let passwordTextField: UITextField = {
        let text = UITextField()
        text.isSecureTextEntry = true
        text.backgroundColor = .white
        text.placeholder = "User Name"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor =  UIColor.init(red: 244/255, green: 62/255, blue: 60/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    override func viewDidAppear(_ animated: Bool) {
        let status =  UserDefaults.standard.bool(forKey: "isLoggedIn")
        
        if(status) {
            makeLogin()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    view.backgroundColor = UIColor.init(red: 254/255, green: 72/255, blue: 70/255, alpha: 1)
        
        
    let status =  UserDefaults.standard.bool(forKey: "isLoggedIn")
        print("status \(status)")
        
        setupViews()
        if(status) {
        //    handleLogin()
        }
    }
    func setupViews(){
        
        view.addSubview(userNameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        userNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        userNameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        userNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        userNameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10).isActive = true
        loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    @objc func handleLogin(){
        
        UserDefaults.standard.set(true, forKey: "isLoggedIn")
        UserDefaults.standard.synchronize()
        UserDefaults.standard.set(userNameTextField.text, forKey: "userName")
        UserDefaults.standard.synchronize()
        UserDefaults.standard.set(passwordTextField.text, forKey: "password")
        UserDefaults.standard.synchronize()
//        UserDefaults.standard.set(passwordTextField.text, forKey: "userName")
//        set(userNameTextField.text, forKey: "userName")
//        UserDefaults.standard.set(passwordTextField.text, forKey: "password")
        UserDefaults.standard.synchronize()
        
        makeLogin()
    }
    
   @objc func makeLogin(){
        let second = SecondViewController()
        
        let navController = UINavigationController(rootViewController: second)
        self.present(navController, animated: true, completion: nil)
        
    }

}

