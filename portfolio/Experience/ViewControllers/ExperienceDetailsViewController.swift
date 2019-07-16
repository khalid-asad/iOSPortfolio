//
//  ExperienceDetailsViewController.swift
//  portfolio
//
//  Created by Khalid Asad on 2019-07-14.
//  Copyright © 2019 khalidtest. All rights reserved.
//

import Foundation
import UIKit

typealias ExperienceDetails = (image: UIImage?, title: String?, dates: String?, description: String?)

class ExperienceDetailsViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    var experienceDetails: ExperienceDetails?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = ThemeManager().primaryBackgroundColor

        guard let experienceDetails = experienceDetails else { return }
        title = experienceDetails.title
        configureExperienceDetailsView(experienceDetails: experienceDetails)
    }
}

// MARK: - Private Methods
extension ExperienceDetailsViewController {
    
    private func configureExperienceDetailsView(experienceDetails: ExperienceDetails) {
        stackView.arrangedSubviews.forEach {
            stackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        let view = ExperienceDetailsView.create(image: experienceDetails.image, title: experienceDetails.title, dates: experienceDetails.dates, description: experienceDetails.description)
        stackView.addArrangedSubview(UIView.createView(withSubview: view, edgeInsets: .zero))
    }
}
