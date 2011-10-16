package com.kiwi

import dom.kiwi.Benutzer

class openID {

	String url

	static belongsTo = [user: Benutzer]

	static constraints = {
		url unique: true
	}
}
