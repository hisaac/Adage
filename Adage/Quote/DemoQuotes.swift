//
// Created by Isaac Halvorson on 4/15/18.
// Copyright (c) 2018 Levelsoft. All rights reserved.
//

import Foundation

class DemoQuotes {
	var quotes: [Quote] = [Quote]()

	init() {
		fillDemoArray()
	}

	private let demoQuoteAuthors: [String] = ["XKCD", "Randall Monroe"]
	private let demoQuoteText: [String] = [
		"I disagree strongly with whatever work this quote is attached to.",
		"This quote was taken out of context.",
		"This quote is often falsely attributed to Mark Twain.",
		"I'm being quoted to introduce something, but I have no idea what it is and certainly don't endorse it.",
		"This quote is very memorable.",
		"I wrote this book, and the person quoting me here is taking credit for it.",
		"\"This entire thing is the quote, not just the part in quote marks.\" [Quote marks, brackets, and editor's note are all in the original. —ED.]",
		"Websites that collect quotes are full of mistakes and never check original sources.",
		"This quote will be the only part of this presentation you remember.",
		"Oooh, look at me, I looked up a quote!",
		"If you're doing a text search in this document for the word 'butts', the good news is that it's here ,but the bad news is that it only appears in this unrelated quote.",
		"Wait, what if these quote marks are inside out, so everything in the rest of the document is the quotation and *this* part isn't? Duuuuude.",
		"The editors of *Bartlett's Familiar Quotations* are a bunch of cowards who don't have the guts to print this.",
		"This quote only looks profound when it's in a script font over a sunset.",
		"I don't do a lot of public speaking, so I looked up a memorable quote to start my speech, and this is what I found. Ok, you're staring at me blankly, but this whole thing is a quote. I know that sounds confusing, but… you know what, never mind.",
		"Sent from my iPhone.",
		"\"Since there's no ending quote mark, everything after this is part of my quote. —Randall Monroe",
	]

	private func randomAuthor() -> String {
		return demoQuoteAuthors[Int(arc4random_uniform(2))]
	}

	private func fillDemoArray() {
		for quoteText in demoQuoteText {
			quotes.append(Quote(text: quoteText, author: randomAuthor()))
		}
	}
}
