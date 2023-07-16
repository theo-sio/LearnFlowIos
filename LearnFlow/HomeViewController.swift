//
//  HomeViewController.swift
//  LearnFlow
//
//  Created by Jean on 05/04/2023.
//

import UIKit
import SwiftUI

@available(iOS 13.0, *)
class HomeViewController: UIViewController,UITextFieldDelegate {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    func fetch(){
        guard let url = URL(string: "127.0.0.1")else{
            return
        }
        
    }
    
    func authenticatUser(username: String, password: String){
        if username.lowercased() == "mario"{
            wrongUsername = 0
            if password.lowercased()=="azerty"{
                wrongPassword = 0
                let viewController = AccueilViewController()
                self.navigationController?.pushViewController(viewController, animated: true)
            }else{
                wrongPassword = 2
            }
            
        }
        else{
            wrongUsername = 2
        }
    }
    
    @IBOutlet var buttonconnection: UIButton!
    @IBOutlet weak var PassWordField: UITextField!
    @IBOutlet weak var MailField: UITextField!
    
    
    
    @IBAction func FieldIdentifier(_ sender: Any) {
        
    }
    
    @IBOutlet weak var ViewConnection: UIView!
    
    
    @IBAction func ButtonValidate(_ sender: UIButton) {
        authenticatUser(username: MailField.text!, password: PassWordField.text!)
        
        print("next")
        
        //permet de changer d'ecran
    }
    
    func shadow(){
        self.buttonconnection.layer.shadowColor = UIColor(red: 0, green: 0, blue:0,alpha: 0.25).cgColor
        self.buttonconnection.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.buttonconnection.layer.shadowOpacity = 1.0
        self.buttonconnection.layer.shadowRadius = 2.0
        self.buttonconnection.layer.masksToBounds = false
        self.buttonconnection.layer.cornerRadius = 4.0
        
        
        self.PassWordField.layer.masksToBounds = true
        self.PassWordField.layer.cornerRadius = 18.0
        
        
        self.MailField.layer.masksToBounds = true
        self.MailField.layer.cornerRadius = 18.0
        
        self.ViewConnection.layer.masksToBounds = true
        self.ViewConnection.layer.cornerRadius = CGRectGetWidth(self.ViewConnection.frame)/25.0
    }
    
    
    func setGradientBackground(){
        
        let colorRight = UIColor(red: 255.0/255.0, green: 164.0/255.0, blue: 132.0/255.0, alpha: 1.0).cgColor
        let colorLeft = UIColor(red: 255.0/255.0, green: 210.0/255.0, blue: 122.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorRight,colorLeft]
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.frame = self.view.bounds
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        shadow()
        setGradientBackground()
        super.viewWillAppear(animated)
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MultiScreen"

    }
    
}
