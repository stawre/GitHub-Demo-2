//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Shreyas Tawre on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController {
    
    @IBOutlet weak var starsSlider: UISlider!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let minStars = Int(sender.value)
        UserDefaults.standard.set(minStars, forKey: "minStars")
    }
    
    var settings: GithubRepoSearchSettings?
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        self.delegate?.didSaveSettings(settings: settings!)
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        self.delegate?.didCancelSettings()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
