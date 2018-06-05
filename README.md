# ios-login

![simulator screen shot - iphone x - 2018-06-05 at 11 18 42](https://user-images.githubusercontent.com/39940314/40958977-db12260e-68b8-11e8-9b5d-a82cacd3ea43.png)

this is the first page and  this is the way to store data in the session




                @objc func handleLogin() {
                           UserDefaults.standard.set(true, forKey: "isLoggedIn")
                           UserDefaults.standard.synchronize()
                           UserDefaults.standard.set(userNameTextField.text, forKey: "userName")
                           UserDefaults.standard.synchronize()
                           UserDefaults.standard.set(passwordTextField.text, forKey: "password")
                           UserDefaults.standard.synchronize()
                           UserDefaults.standard.synchronize()
                          makeLogin()
                     }
    


![simulator screen shot - iphone x - 2018-06-05 at 11 18 59](https://user-images.githubusercontent.com/39940314/40958988-e3fdb2a6-68b8-11e8-846c-a875b131f0f7.png)

 this is the retriving data from session



        let user = UserDefaults.standard.string(forKey: "userName")
        let pass = UserDefaults.standard.string(forKey: "password")
        print(user, pass)
