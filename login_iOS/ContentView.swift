//
//  ContentView.swift
//  login_iOS
//
//  Created by 游宗諭 on 2020/6/15.
//  Copyright © 2020 ytyubox. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State var didLogin = false
	@State var name:String = ""
	@State var password:String = ""
	var body: some View {
		VStack {
			TextField("name", text: $name)
			SecureField("password", text: $password)
			Button(action: login){ Text("Login")}
		}
	}
	
	func login() {
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
