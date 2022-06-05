//
//  ViewController.swift
//  RememberLayoutInCode
//
//  Created by Алексей Гуляев on 05.06.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var myView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        // Do any additional setup after loading the view.
    }

    private func setUpUI() {
        view.backgroundColor = .white
        view.addSubview(myView)
        
        view.addSubview(bottomView)
        
        
        myView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        myView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        bottomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        bottomView.topAnchor.constraint(equalTo: myView.bottomAnchor, constant: 10).isActive = true
        
    }


}
