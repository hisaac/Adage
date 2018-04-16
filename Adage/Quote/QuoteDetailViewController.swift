//
// Created by Isaac Halvorson on 4/15/18.
// Copyright (c) 2018 Levelsoft. All rights reserved.
//

import UIKit

class QuoteDetailViewController: UIViewController {

	var quote = Quote(text: "Body Text", author: "Author")

	private var bodyLabel = UILabel()
	private var authorLabel = UILabel()

	override func viewDidLoad() {
		super.viewDidLoad()
		bodyLabel.text = quote.text
		authorLabel.text = quote.author
		layoutViews()
	}

	func layoutViews() {
		
	}
}
