//
//  ViewController.swift
//  AboutPage
//
//  Created by Gabriel Breshears on 7/6/17.
//  Copyright © 2017 Gabriel Breshears. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var favoriteMoviesTextView: UITextView!
    @IBOutlet weak var biographyTextView: UITextView!
    let aboutMe: About = About()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColor()
        addData()

        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeColor(){
        favoriteMoviesTextView.backgroundColor = UIColor.cyan
        biographyTextView.backgroundColor = UIColor.cyan
        view.backgroundColor = UIColor.cyan
    }
    
    func addData(){
        nameLabel.text = "Name: \(aboutMe.name)"
        ageLabel.text = "Age:  \(aboutMe.age)"
        favoriteMoviesTextView.text = "Favorite Movies:\n1. \(aboutMe.favoriteMovies[aboutMe.favoriteMovies.startIndex]) \n2. \(aboutMe.favoriteMovies[aboutMe.favoriteMovies.index(after: aboutMe.favoriteMovies.startIndex)]) \n3. \(aboutMe.favoriteMovies[aboutMe.favoriteMovies.index(before: aboutMe.favoriteMovies.endIndex)])"
        favoriteMoviesTextView.sizeToFit()
        biographyTextView.text = "Biography: \(aboutMe.biography)"
        
    }

}

