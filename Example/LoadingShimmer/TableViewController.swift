//
//  TableViewController.swift
//  LoadingShimmer_Example
//
//  Created by JOGENDRA on 22/05/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    private var numberOfSections: Int = 0
    private var numberOfRows: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        self.numberOfSections = 0
        self.numberOfRows = 0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        LoadingShimmer.startCovering(tableView)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numberOfRows
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)

        // Configure the cell...

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }

    @IBAction func didTapStart(_ sender: Any) {
        self.numberOfSections = 0
        self.numberOfRows = 0
        tableView.reloadData()
        LoadingShimmer.startCovering(tableView)
    }

    @IBAction func didTapStop(_ sender: Any) {
        self.numberOfSections = 1
        self.numberOfRows = 3
        tableView.reloadData()
        LoadingShimmer.stopCovering(tableView)
    }
}
