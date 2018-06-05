# ios-login
![simulator screen shot - iphone x - 2018-06-05 at 11 18 42](https://user-images.githubusercontent.com/39940314/40958753-0ea24464-68b8-11e8-8129-9eb8828e5f6d.png)
this is the first page and  this is the way to store data in the session
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
    

![simulator screen shot - iphone x - 2018-06-05 at 11 18 59](https://user-images.githubusercontent.com/39940314/40958760-13fe88c8-68b8-11e8-99e6-ccd309476708.png)

 this is the retriving data from session
        let user = UserDefaults.standard.string(forKey: "userName")
        let pass = UserDefaults.standard.string(forKey: "password")
        
        print(user, pass)
