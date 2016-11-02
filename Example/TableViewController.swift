//
//  TableViewController.swift
//  UIFramework
//
//  Created by Auriel Vilaire on 11/01/2016.
//  Copyright (c) 2016 Auriel Vilaire. All rights reserved.
//

import UIKit


open class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override open func viewDidLoad() {
        super.viewDidLoad()
        let podBundle = Bundle(for: TableViewController.self)
        
        let bundleURL = podBundle.url(forResource: "ARVFramework",
        withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        let cellNib = UINib(nibName: "cell", bundle: bundle)
        tableView.register(cellNib, forCellReuseIdentifier: "cell")
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    func viewDidAppear(animated: Bool) {
        PokemonFramework.performSegueToFrameworkVC(caller: self)
    }
    
}



extension TableViewController: UITableViewDelegate {}

extension TableViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell")!
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}



