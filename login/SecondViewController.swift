
import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor  = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(handleLogout))
        
        let user = UserDefaults.standard.string(forKey: "userName")
        let pass = UserDefaults.standard.string(forKey: "password")
        
        print(user, pass)
//         print(UserDefaults.standard.string(forKey: "password"))
        
//        UserDefaults.standard.set(userNameTextField.text, forKey: "userName")
//        UserDefaults.standard.set(passwordTextField.text, forKey: "password")
        
    }
    @objc func handleLogout(){
        UserDefaults.standard.set(false, forKey: "isLoggedIn")
        UserDefaults.standard.synchronize()
        
        
        dismiss(animated: true, completion: nil)
    }

}
