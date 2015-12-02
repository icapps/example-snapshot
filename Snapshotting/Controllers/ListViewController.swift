//
//  ListViewController.swift
//  Snapshotting
//
//  Created by Jelle Vandebeeck on 02/12/15.
//  Copyright © 2015 Jelle Vandebeeck. All rights reserved.
//

import UIKit

enum ListType: Int {
    case Capitan
    case Yosemite
    case Mavericks
    
    func imageName() -> String {
        switch self {
        case .Capitan: return "Capitan"
        case .Yosemite: return "Yosemite"
        case .Mavericks: return "Mavericks"
        }
    }
}

class ListViewController: UITableViewController {
    
    // MARK: - Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let controller = segue.destinationViewController as? DetailViewController,
            let selectedIndex = tableView.indexPathForSelectedRow {
            controller.type = ListType(rawValue: selectedIndex.row)
        }
    }
    
}