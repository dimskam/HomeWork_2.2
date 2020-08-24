//
//  ViewController.swift
//  HomeWork_2.2
//
//  Created by Dmitriy Kamenkov on 21.08.2020.
//  Copyright © 2020 Dmitriy Kamenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var someView: UIView!
    
    @IBOutlet var redColorValueLabei: UILabel!
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var blueColorValuelabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    //MARK: - Life Cycle Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someView.layer.cornerRadius = 10
        someView.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
     
        initRedColorSlider()
        initGreenColorSlider()
        initBlueColorSlider()
        
        
    }
    
    //MARK: - IB Action
    @IBAction func redColorsSiderAction() {
        redColorValueLabei.text = String(format: "%.2f", redColorSlider.value)
        displayColors()
    }
    @IBAction func greenColorSliderAction() {
        greenColorValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        displayColors()
    }
    @IBAction func blueColorSliderAction() {
        blueColorValuelabel.text = String(format: "%.2f", blueColorSlider.value)
        displayColors()
    }
    
   //MARK: - Private Metode
    private func initRedColorSlider() {
        redColorSlider.value = 0.5
        redColorSlider.maximumValue = 1
        redColorSlider.minimumValue = 0
        redColorSlider.minimumTrackTintColor = .red
        
    }
    private func initGreenColorSlider() {
        greenColorSlider.value = 0.5
        greenColorSlider.maximumValue = 1
        greenColorSlider.minimumValue = 0
        greenColorSlider.minimumTrackTintColor = .green
    }
    private func initBlueColorSlider() {
        blueColorSlider.value = 0.5
        blueColorSlider.maximumValue = 1
        blueColorSlider.minimumValue = 0
        blueColorSlider.minimumTrackTintColor = .blue
    }
    
    private func displayColors() {
        let red = CGFloat(redColorSlider.value)
        let green = CGFloat(greenColorSlider.value)
        let blue = CGFloat(blueColorSlider.value)
        someView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}


