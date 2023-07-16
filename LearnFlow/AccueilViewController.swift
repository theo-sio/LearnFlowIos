//
//  AccueilViewController.swift
//  LearnFlow
//
//  Created by Jean on 04/05/2023.
//

import UIKit

class AccueilViewController: UIViewController {
    
    
    @IBOutlet weak var ChatButton: UIButton!
    
    @IBOutlet weak var RapportButton: UIButton!
    
    @IBOutlet weak var RapportStudentButton: UIButton!
    
    @IBOutlet weak var ValidationTeacherButton: UIButton!
    
    
    
    @IBAction func validationScreen(_ sender: Any) {
        let ValidationView = ValidationTeacherViewController()
        self.navigationController?.pushViewController(ValidationView, animated: true)
    }
    
    @IBAction func RapportStudent(_ sender: Any) {
        let RapportView = RapportStudentViewController()
        self.navigationController?.pushViewController(RapportView, animated: true)
    }
    
    @IBAction func RapportsGestion(_ sender: Any) {
        let RapportGestionView = RapportGestionViewController()
        self.navigationController?.pushViewController(RapportGestionView, animated: true)
    }
    
    @IBAction func chatview(_ sender: Any) {
        let chatview = ChatViewController()
        self.navigationController?.pushViewController(chatview, animated: true)
    }
    
    func style(){
        self.ChatButton.layer.masksToBounds = true
        self.ChatButton.layer.cornerRadius = 18.0
        self.ChatButton.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        
        self.RapportButton.layer.masksToBounds = true
        self.RapportButton.layer.cornerRadius = 18.0
        self.RapportButton.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        
        self.RapportStudentButton.layer.masksToBounds = true
        self.RapportStudentButton.layer.cornerRadius = 18.0
        self.RapportStudentButton.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        
        self.ValidationTeacherButton.layer.masksToBounds = true
        self.ValidationTeacherButton.layer.cornerRadius = 18.0
        self.ValidationTeacherButton.layer.maskedCorners = [ .layerMaxXMaxYCorner, .layerMaxXMinYCorner]
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
        style()
        setGradientBackground()
        super.viewWillAppear(animated)
        
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
