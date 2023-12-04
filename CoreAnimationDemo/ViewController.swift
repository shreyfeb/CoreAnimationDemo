//
//  ViewController.swift
//  CoreAnimationDemo
//
//  Created by ShreyWork on 10/25/23.
//

import UIKit

class ViewController: UIViewController {

//    let AnimateView = UIImageView(frame: CGRect(x: 20, y: 140, width: 140, height: 100))
    let AnimateImageView = UIImageView()
    let customWidth:CGFloat = 140
    let customHeight:CGFloat = 110
    
    let animateTextView = UITextView()
    let customButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimateImageView.image = UIImage(named: "Img29")
        AnimateImageView.contentMode = .scaleAspectFill
//        AnimateImageView.backgroundColor = .cyan
        view.addSubview(AnimateImageView)
        
        
        animateTextView.text = "WELCOME"
        animateTextView.font = UIFont(name: "Times New Roman", size: 25)
        animateTextView.textColor = .white
        animateTextView.backgroundColor = .clear
        view.addSubview(animateTextView)
        
        customButton.setTitle("Tap Me!", for: .normal)
        customButton.setTitleColor(.darkGray, for: .selected)
        customButton.backgroundColor = .black
        customButton.addTarget(self, action: "Tapped", for: .touchUpInside)

        view.addSubview(customButton)
    }
    override func viewDidAppear(_ animated: Bool) {
        AnimateImageView.frame = CGRect(x: CGFloat(Int(view.bounds.midX - customWidth/2)),
                                   y: CGFloat(Int(view.bounds.midY - customHeight/2)), 
                                   width: customWidth,
                                   height: customHeight)
        
        animateTextView.frame = CGRect(x: CGFloat(Int(view.bounds.midX - customWidth/2)),
                                       y: CGFloat(Int(view.bounds.midY - customHeight/2 - 150)),
                                       width: customWidth,
                                       height: customHeight)
        
        customButton.frame = CGRect(x: CGFloat(Int(view.bounds.midX - customWidth/2 - 150)),
                                    y: CGFloat(Int(view.bounds.midY - customHeight/2 )),
                                    width: customWidth,
                                    height: customHeight)
        
        animationCustom()
        animationOfText()
    }
    

    func animationCustom(){
        let animation = CABasicAnimation()
//        animation.keyPath = "position.x"
        animation.keyPath =  "transform.scale"
//        animation.fromValue = 20 + 140/2
//        animation.toValue = 300
//        animation.duration = 1
        animation.fromValue = 1
        animation.toValue = 2
        animation.duration = 0.5
    
        AnimateImageView.layer.add(animation, forKey: "basic")
//        AnimateView.layer.position = CGPoint(x: 300, y: 100 + 100/2) // update to final position
        AnimateImageView.layer.transform = CATransform3DMakeScale(2, 2, 1)
        
        
        
    }
    func animationOfText(){
        
        let animation = CABasicAnimation()
        animation.keyPath = "position.x"
//        animation.keyPath =  "transform.scale"
        animation.fromValue = view.bounds.midX * 2
        animation.toValue = view.bounds.midX + 10
        animation.duration = 1

    
        animateTextView.layer.add(animation, forKey: "basic")
//        animateTextView.layer.position = CGPoint(x: 300, y: 100 + 100/2) // update to final position
        AnimateImageView.layer.transform = CATransform3DMakeScale(2, 2, 1)
    }
    func animateScreen(){
        let animation = CABasicAnimation()
        animation.keyPath =  "transform.scale"
        animation.fromValue = view.bounds.midX * 2
        animation.toValue = view.bounds.midX + 30
        animation.duration = 1



    }


}

