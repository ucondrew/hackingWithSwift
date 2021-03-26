//
//  ViewController.swift
//  Project4.5
//
//  Created by Andrew Garcia on 3/25/21.
//

import UIKit

class ViewController: UITableViewController {
    var websites = ["apple.com", "google.com", "hackingwithswift.com", "youtube.com", "twitter.com", "github.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Web Browser"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Websites", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.selectedWebsite = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

