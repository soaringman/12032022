//
//  ViewController.swift
//  VPN1
//
//  Created by Алексей Гуляев on 05.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 10
        return stack
    }()

    private lazy var textLabel: UIView = {
        let view = UILabel()
        view.textColor = .black
        view.font = .systemFont(ofSize: 12)
        view.textAlignment = .center
        view.text = "Отключено"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var countDownLabel: UILabel = {
        let view = UILabel()
        view.textColor = .black.withAlphaComponent(0.1)
        view.font = .systemFont(ofSize: 20)
        view.textAlignment = .center
        view.text = "00:00:00"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var switcher: UISwitch = {
        let view = UISwitch()
        view.backgroundColor = .white
        view.tintColor = .link
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        // Do any additional setup after loading the view.
    }

    private func setUpUI() {
        view.backgroundColor = .black
        stack.addArrangedSubview(textLabel)
        stack.addArrangedSubview(countDownLabel)
        
        view.addSubview(stack)
        view.addSubview(switcher)

        
        stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110.5).isActive = true
        stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 109.5).isActive = true
        stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -20).isActive = true
        
        switcher.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110.5).isActive = true
        switcher.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 109.5).isActive = true
        switcher.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: -40).isActive = true
        
        
        
        
        
        
        
        
        
//        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //не уверен что нужно указывать принудительно ширину и высоту поскольку
        //если текст окажется чуть больше он просто не отобразиться или будет виден только кусок текста
//        textLabel.heightAnchor.constraint(equalToConstant: 22)
//        textLabel.widthAnchor.constraint(equalToConstant: 82)
//        textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -252).isActive = true
//        textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -1780).isActive = true
        
        
        
//        myView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        myView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        myView.heightAnchor.constraint(equalToConstant: 200).isActive = true
//
//        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
//        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
//
//        bottomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//
//        bottomView.topAnchor.constraint(equalTo: myView.bottomAnchor, constant: 10).isActive = true
//
    }


}


