//
//  ViewController.swift
//  ColorEditors
//
//  Created by Daniel Wallace on 28/02/15.
//  Copyright (c) 2015 nz.co.danielw. All rights reserved.
//

import UIKit

class ColorEditorViewController: UIViewController {

    var color = Color(red: 0.0, green: 0.5, blue: 1.0)
    
    @IBOutlet weak var colorEditor: ColorEditorView! {
        didSet{
            updateUI()
        }
    }

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func redSliderChanged(sender: UISlider) {
        color.red = redSlider.value
        updateUI()
    }
    
    @IBAction func greenSliderChanged(sender: UISlider) {
        color.green = greenSlider.value
        updateUI()
    }
    
    @IBAction func blueSliderChanged(sender: UISlider) {
        color.blue = blueSlider.value
        updateUI()
    }
    
    func updateUI(){
        colorEditor.backgroundColor = UIColor(red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: CGFloat(1.0))
        
        println("colorEditor.backgroundColor=\(colorEditor.backgroundColor)")
        println("color.red=\(color.red)")
        println("color.green=\(color.green)")
        println("color.blue=\(color.blue)")
//        colorEditor.setNeedsDisplay()
        
        redSlider?.value = color.red
        blueSlider?.value = color.blue
        greenSlider?.value = color.green
        
    }
    
    override func viewDidLoad() {
        updateUI()
    }
}

