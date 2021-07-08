//
//  NewsTableViewController.swift
//  VK
//
//  Created by Pauwell on 26.04.2021.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "AuthorTableViewCell", bundle: nil), forCellReuseIdentifier: "AuthorTableViewCell")
        
        self.tableView.register(UINib(nibName: "ImageNewsTableViewCell", bundle: nil), forCellReuseIdentifier: "ImageNewsTableViewCell")
        
        self.tableView.register(UINib(nibName: "TextNewsTableViewCell", bundle: nil), forCellReuseIdentifier: "TextNewsTableViewCell")
        
        self.tableView.register(UINib(nibName: "LikesNewsTableViewCell", bundle: nil), forCellReuseIdentifier: "LikesNewsTableViewCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return DataStorage.shared.newsGroups.count
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
            switch indexPath.section {
            case 0:  // Avatar
                let cell = tableView.dequeueReusableCell(withIdentifier: "AuthorTableViewCell", for: indexPath) as? NewsTableViewCell

                cell?.configureWithNews(news: DataStorage.shared.newsGroups[indexPath.row])
                return cell!
                
            case 1: // Text
                let cell = tableView.dequeueReusableCell(withIdentifier: "TextNewsTableViewCell", for: indexPath) as? NewsTableViewCell

                cell?.configureWithNews(news: DataStorage.shared.newsGroups[indexPath.row])
                return cell!
                
            case 2: // Image
                let cell = tableView.dequeueReusableCell(withIdentifier: "ImageNewsTableViewCell", for: indexPath) as? NewsTableViewCell

                cell?.configureWithNews(news: DataStorage.shared.newsGroups[indexPath.row])
                return cell!
            
            case 3: // Likes
                let cell = tableView.dequeueReusableCell(withIdentifier: "LikesNewsTableViewCell", for: indexPath) as? NewsTableViewCell

                cell?.configureWithNews(news: DataStorage.shared.newsGroups[indexPath.row])
                return cell!
                
            default:
                return UITableViewCell()
            }
    }
}



