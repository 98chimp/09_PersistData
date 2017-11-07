//
//  SignupTableViewController.swift
//  FoodTracker
//
//  Created by Shahin on 2017-11-06.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

class SignupTableViewController: UITableViewController
{
    // MARK: - Outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 4
    }
    
    // MARK: - Actions
    @IBAction func signupButtonTapped(_ sender: UIButton)
    {
        WebService.shared.signup(with: emailTextField.text ?? "shahin", password: passwordTextField.text ?? "password", and: self)
    }
    

}
