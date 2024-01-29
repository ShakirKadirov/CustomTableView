//
//  ViewController.swift
//  CustomTableView
//
//  Created by Shakir Kadirov on 28.01.2024.
//

import UIKit

class HomePageController: UIViewController {
    
    let tableData: [TableData] = [
        TableData(image: .iphoneImg, title: .iphone, paragraph: <#T##String#>)
    ]
    
    lazy var tableView: UITableView = {
        $0.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.reuseID)
        $0.delegate = self
        $0.dataSource = self
        $0.backgroundColor = .systemBlue
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITableView())
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home Page"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .yellow
        view.addSubview(tableView)
        setConstraint()
    }
    
    private func setConstraint(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
    }
}


extension HomePageController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseID, for: indexPath) as! CustomTableViewCell
            let image = tableData[indexPath.row].image
            return cell
        }
}
