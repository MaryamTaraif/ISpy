//
//  ViewController.swift
//  ISpy
//
//  Created by Kawthar Alekri on 18/11/2022.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming() -> UIView? {
        return image
    }
    
    func updateZoomFor(size: CGSize){
        let widthScale = size.width / image.bounds.width
        let heightScale = size.height / image.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var image: UIImageView!
    
}

