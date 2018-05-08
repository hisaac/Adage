//
// Created by Isaac Halvorson on 4/15/18.
// Copyright (c) 2018 Levelsoft. All rights reserved.
//

import Foundation
import UIKit

class QuoteListViewController: UITableViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		title = NSLocalizedString("Quotes", comment: "Title bar for main quote list")

		tableView.register(UITableViewCell.self, forCellReuseIdentifier: "QuoteCell")
		tableView.allowsSelection = true
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return DemoQuotes().quotes.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell", for: indexPath)
		let quote = DemoQuotes().quotes[indexPath.row]
		cell.textLabel?.text = quote.text
		return cell
	}

	override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
		guard let navigationController = navigationController else { return }
		let quoteDetailViewController = QuoteDetailViewController()
		navigationController.pushViewController(quoteDetailViewController, animated: true)
	}
}
