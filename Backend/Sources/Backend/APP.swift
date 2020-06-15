//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/6/15.
//

import Foundation
import Vapor

public struct Server {
	public init() throws {
		_app = Application()
		_app.get("") { (req) in
			return "It works! again"
		}
	}
	let _app:Application
	 

	public func start() throws {
		try _app.run()
	}
}
