//
//  RapportStudentViewController.swift
//  LearnFlow
//
//  Created by Jean on 31/05/2023.
//

import UIKit

class RapportStudentViewController: UIViewController {

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

    override func viewDidLoad() {
        setGradientBackground()
        super.viewDidLoad()

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
