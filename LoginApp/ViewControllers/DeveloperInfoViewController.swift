//
//  DeveloperInfoViewController.swift
//  LoginApp
//
//  Created by Константин Натаров on 04.04.2023.
//

import UIKit

final class DeveloperInfoViewController: UIViewController {
    @IBOutlet private weak var photo: UIImageView!
    
    @IBOutlet private var developerFacts: [UILabel]!
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        developerFacts[0].text = userInfo.developer.name
        developerFacts[1].text = userInfo.developer.age
        developerFacts[2].text = userInfo.developer.education
        developerFacts[3].text = userInfo.developer.profession
        developerFacts[4].text = userInfo.developer.hobby
        developerFacts[5].text = userInfo.developer.gitHub
        developerFacts[6].text = userInfo.developer.codeWarsRank
        developerFacts[7].text = userInfo.developer.fears
        developerFacts[8].text = userInfo.developer.rewards
        }
    
    override func viewDidLayoutSubviews() {
        photo.layer.cornerRadius = photo.layer.frame.width / 2
        photo.clipsToBounds = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let biographyVC = segue.destination as? BiographyViewController else { return }
        biographyVC.userInfo = userInfo
        }
    }
